.class public Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
.super Lcom/android/server/backup/fullbackup/FullBackupTask;
.source "PerformFullTransportBackupTask.java"

# interfaces
.implements Lcom/android/server/backup/BackupRestoreTask;


# instance fields
.field public final mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

.field public final mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

.field public mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

.field public mBackupObserver:Landroid/app/backup/IBackupObserver;

.field public mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

.field public final mBackupRunnerOpToken:I

.field public final mCancelLock:Ljava/lang/Object;

.field public volatile mCancelled:Z

.field public final mCurrentOpToken:I

.field public volatile mIsDoingBackup:Z

.field public mJob:Lcom/android/server/backup/FullBackupJob;

.field public mLatch:Ljava/util/concurrent/CountDownLatch;

.field public final mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

.field public mOperationStorage:Lcom/android/server/backup/OperationStorage;

.field public mPackages:Ljava/util/List;

.field public final mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

.field public mUpdateSchedule:Z

.field public mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field public final mUserId:I

.field public mUserInitiated:Z


# direct methods
.method public static synthetic $r8$lambda$LHAoxPfqTRXwU2t3rQ_gq5cVgNw(Lcom/android/server/backup/TransportManager;Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V
    .registers 3

    .line 128
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAgentTimeoutParameters(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)Lcom/android/server/backup/BackupAgentTimeoutParameters;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBackupEligibilityRules(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)Lcom/android/server/backup/utils/BackupEligibilityRules;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBackupManagerMonitorEventSender(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserBackupManagerService(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)Lcom/android/server/backup/UserBackupManagerService;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/OperationStorage;Lcom/android/server/backup/transport/TransportConnection;Landroid/app/backup/IFullBackupRestoreObserver;[Ljava/lang/String;ZLcom/android/server/backup/FullBackupJob;Ljava/util/concurrent/CountDownLatch;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;Lcom/android/server/backup/internal/OnTaskFinishedListener;ZLcom/android/server/backup/utils/BackupEligibilityRules;)V
    .registers 14

    .line 179
    invoke-direct {p0, p4}, Lcom/android/server/backup/fullbackup/FullBackupTask;-><init>(Landroid/app/backup/IFullBackupRestoreObserver;)V

    .line 148
    new-instance p4, Ljava/lang/Object;

    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelLock:Ljava/lang/Object;

    .line 180
    iput-object p1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 181
    iput-object p2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    .line 182
    iput-object p3, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    .line 183
    iput-boolean p6, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    .line 184
    iput-object p8, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 185
    iput-object p7, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    .line 186
    new-instance p2, Ljava/util/ArrayList;

    array-length p3, p5

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mPackages:Ljava/util/List;

    .line 187
    iput-object p9, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    if-eqz p11, :cond_23

    goto :goto_25

    .line 188
    :cond_23
    sget-object p11, Lcom/android/server/backup/internal/OnTaskFinishedListener;->NOP:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    :goto_25
    iput-object p11, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 189
    iput-boolean p12, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserInitiated:Z

    .line 190
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->generateRandomIntegerToken()I

    move-result p2

    iput p2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentOpToken:I

    .line 191
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->generateRandomIntegerToken()I

    move-result p2

    iput p2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunnerOpToken:I

    .line 192
    new-instance p2, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    invoke-direct {p2, p10}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;-><init>(Landroid/app/backup/IBackupManagerMonitor;)V

    iput-object p2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    .line 195
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getAgentTimeoutParameters()Lcom/android/server/backup/BackupAgentTimeoutParameters;

    move-result-object p2

    const-string p3, "Timeout parameters cannot be null"

    .line 194
    invoke-static {p2, p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object p3, p2

    check-cast p3, Lcom/android/server/backup/BackupAgentTimeoutParameters;

    iput-object p2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 197
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getUserId()I

    move-result p2

    iput p2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserId:I

    .line 198
    iput-object p13, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 200
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->isBackupOperationInProgress()Z

    move-result p2

    const-string p3, "PFTBT"

    if-eqz p2, :cond_63

    .line 201
    const-string p1, "Skipping full backup. A backup is already in progress."

    invoke-static {p3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 202
    iput-boolean p1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelled:Z

    return-void

    .line 206
    :cond_63
    array-length p2, p5

    const/4 p4, 0x0

    :goto_65
    if-ge p4, p2, :cond_e5

    aget-object p6, p5, p4

    const/4 p7, 0x3

    const/4 p8, 0x0

    .line 208
    :try_start_6b
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p9

    .line 209
    iget p10, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserId:I

    const/high16 p11, 0x8000000

    invoke-virtual {p9, p6, p11, p10}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p9

    .line 211
    iget-object p10, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    iget-object p11, p9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p10, p11}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    move-result p10

    const/16 p11, -0x7d1

    if-nez p10, :cond_90

    .line 219
    iget-object p10, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    const/16 p12, 0x9

    invoke-virtual {p10, p12, p9, p7, p8}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 224
    iget-object p9, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {p9, p6, p11}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    goto :goto_e2

    .line 227
    :cond_90
    iget-object p10, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    invoke-virtual {p10, p9}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result p10

    if-nez p10, :cond_a5

    .line 234
    iget-object p10, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    const/16 p12, 0xa

    invoke-virtual {p10, p12, p9, p7, p8}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 239
    iget-object p9, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {p9, p6, p11}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    goto :goto_e2

    .line 242
    :cond_a5
    iget-object p10, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    iget-object p12, p9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p10, p12}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsStopped(Landroid/content/pm/ApplicationInfo;)Z

    move-result p10

    if-eqz p10, :cond_bc

    .line 249
    iget-object p10, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    const/16 p12, 0xb

    invoke-virtual {p10, p12, p9, p7, p8}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 254
    iget-object p9, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {p9, p6, p11}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    goto :goto_e2

    .line 258
    :cond_bc
    iget-object p10, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mPackages:Ljava/util/List;

    invoke-interface {p10, p9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_c1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6b .. :try_end_c1} :catch_c2

    goto :goto_e2

    .line 260
    :catch_c2
    new-instance p9, Ljava/lang/StringBuilder;

    invoke-direct {p9}, Ljava/lang/StringBuilder;-><init>()V

    const-string p10, "Requested package "

    invoke-virtual {p9, p10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p9, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p6, " not found; ignoring"

    invoke-virtual {p9, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-static {p3, p6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object p6, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    const/16 p9, 0xc

    invoke-virtual {p6, p9, p8, p7, p8}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    :goto_e2
    add-int/lit8 p4, p4, 0x1

    goto :goto_65

    .line 269
    :cond_e5
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object p8

    .line 270
    iget-object p1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mPackages:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_ef
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_101

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/PackageInfo;

    .line 271
    iget-object p2, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {p8, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_ef

    .line 274
    :cond_101
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "backupmanager pftbt token="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentOpToken:I

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object p5, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    iget p6, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentOpToken:I

    const/4 p7, 0x0

    const/4 p10, 0x2

    move-object p9, p0

    invoke-interface/range {p5 .. p10}, Lcom/android/server/backup/OperationStorage;->registerOperationForPackages(IILjava/util/Set;Lcom/android/server/backup/BackupRestoreTask;I)V

    return-void
.end method

.method public static newWithCurrentTransport(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/OperationStorage;Landroid/app/backup/IFullBackupRestoreObserver;[Ljava/lang/String;ZLcom/android/server/backup/FullBackupJob;Ljava/util/concurrent/CountDownLatch;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;ZLjava/lang/String;Lcom/android/server/backup/utils/BackupEligibilityRules;)Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
    .registers 27

    .line 120
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->getTransportManager()Lcom/android/server/backup/TransportManager;

    move-result-object v0

    move-object/from16 v1, p10

    .line 121
    invoke-virtual {v0, v1}, Lcom/android/server/backup/TransportManager;->getCurrentTransportClient(Ljava/lang/String;)Lcom/android/server/backup/transport/TransportConnection;

    move-result-object v4

    if-eqz v4, :cond_2c

    .line 126
    new-instance v12, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$$ExternalSyntheticLambda0;

    invoke-direct {v12, v0, v4}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/backup/TransportManager;Lcom/android/server/backup/transport/TransportConnection;)V

    .line 130
    new-instance v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move/from16 v13, p9

    move-object/from16 v14, p11

    invoke-direct/range {v1 .. v14}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/OperationStorage;Lcom/android/server/backup/transport/TransportConnection;Landroid/app/backup/IFullBackupRestoreObserver;[Ljava/lang/String;ZLcom/android/server/backup/FullBackupJob;Ljava/util/concurrent/CountDownLatch;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;Lcom/android/server/backup/internal/OnTaskFinishedListener;ZLcom/android/server/backup/utils/BackupEligibilityRules;)V

    return-object v1

    .line 124
    :cond_2c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No TransportConnection available"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V
    .registers 6

    if-eqz p1, :cond_23

    const/4 p0, 0x0

    .line 704
    aget-object v0, p1, p0

    const-string v1, "Unable to close pipe!"

    const-string v2, "PFTBT"

    const/4 v3, 0x0

    if-eqz v0, :cond_15

    .line 706
    aput-object v3, p1, p0

    .line 708
    :try_start_e
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_11} :catch_12

    goto :goto_15

    .line 710
    :catch_12
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    :goto_15
    const/4 p0, 0x1

    .line 713
    aget-object v0, p1, p0

    if-eqz v0, :cond_23

    .line 715
    aput-object v3, p1, p0

    .line 717
    :try_start_1c
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_20

    goto :goto_23

    .line 719
    :catch_20
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    :goto_23
    return-void
.end method

.method public execute()V
    .registers 1

    .line 0
    return-void
.end method

.method public handleCancel(I)V
    .registers 5

    .line 291
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelLock:Ljava/lang/Object;

    monitor-enter v0

    if-nez p1, :cond_10

    .line 296
    :try_start_5
    const-string p0, "PFTBT"

    const-string p1, "This task cannot time out"

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    goto :goto_54

    :cond_10
    const/4 v1, 0x1

    if-ne p1, v1, :cond_15

    .line 304
    monitor-exit v0

    return-void

    .line 307
    :cond_15
    iget-boolean v2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelled:Z

    if-eqz v2, :cond_22

    .line 308
    const-string p0, "PFTBT"

    const-string p1, "Ignoring duplicate cancel call."

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    monitor-exit v0

    return-void

    .line 312
    :cond_22
    iput-boolean v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelled:Z

    .line 313
    iget-boolean v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mIsDoingBackup:Z

    if-eqz v1, :cond_52

    .line 314
    iget-object v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget v2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunnerOpToken:I

    invoke-virtual {v1, v2, p1}, Lcom/android/server/backup/UserBackupManagerService;->handleCancel(II)V
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_e

    .line 317
    :try_start_2f
    iget-object p0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    const-string p1, "PFTBT.handleCancel()"

    .line 318
    invoke-virtual {p0, p1}, Lcom/android/server/backup/transport/TransportConnection;->getConnectedTransport(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    move-result-object p0

    .line 319
    invoke-virtual {p0}, Lcom/android/server/backup/transport/BackupTransportClient;->cancelFullBackup()V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_3a} :catch_3b
    .catch Lcom/android/server/backup/transport/TransportNotAvailableException; {:try_start_2f .. :try_end_3a} :catch_3b
    .catchall {:try_start_2f .. :try_end_3a} :catchall_e

    goto :goto_52

    :catch_3b
    move-exception p0

    .line 321
    :try_start_3c
    const-string p1, "PFTBT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error calling cancelFullBackup() on transport: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_52
    :goto_52
    monitor-exit v0

    return-void

    :goto_54
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_3c .. :try_end_55} :catchall_e

    throw p0
.end method

.method public operationComplete(J)V
    .registers 3

    .line 0
    return-void
.end method

.method public run()V
    .registers 35

    move-object/from16 v1, p0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    .line 346
    :try_start_5
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->isEnabled()Z

    move-result v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_b} :catch_67c
    .catchall {:try_start_5 .. :try_end_b} :catchall_676

    if-eqz v0, :cond_15

    :try_start_d
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 347
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->isSetupComplete()Z

    move-result v0

    if-nez v0, :cond_1d

    :cond_15
    move-wide/from16 v16, v13

    const/16 v2, -0x7d3

    const/16 v4, -0x3e8

    goto/16 :goto_5bc

    .line 369
    :cond_1d
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    const-string v2, "PFTBT.run()"

    invoke-virtual {v0, v2}, Lcom/android/server/backup/transport/TransportConnection;->connect(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    move-result-object v0
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_25} :catch_5b1
    .catchall {:try_start_d .. :try_end_25} :catchall_5a8

    const/4 v2, 0x1

    if-nez v0, :cond_c5

    .line 371
    :try_start_28
    const-string v0, "PFTBT"

    const-string v3, "Transport not present; full data backup not performed"

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2f} :catch_b4
    .catchall {:try_start_28 .. :try_end_2f} :catchall_bd

    .line 373
    :try_start_2f
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    const/16 v3, 0xf

    invoke-virtual {v0, v3, v12, v2, v12}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_36} :catch_b4
    .catchall {:try_start_2f .. :try_end_36} :catchall_ab

    .line 663
    iget-boolean v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelled:Z

    if-eqz v0, :cond_3d

    const/16 v10, -0x7d3

    goto :goto_3f

    :cond_3d
    const/16 v10, -0x3e8

    .line 667
    :goto_3f
    const-string v0, "PFTBT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Full backup completed with status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v0, v10}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 670
    invoke-virtual {v1, v12}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 671
    invoke-virtual {v1, v12}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 673
    invoke-virtual {v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    .line 675
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v0, :cond_6c

    .line 676
    iget v2, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserId:I

    invoke-virtual {v0, v2}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass(I)V

    .line 679
    :cond_6c
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 680
    :try_start_73
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0, v12}, Lcom/android/server/backup/UserBackupManagerService;->setRunningFullBackupTask(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)V

    .line 681
    monitor-exit v2
    :try_end_79
    .catchall {:try_start_73 .. :try_end_79} :catchall_a8

    .line 683
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    const-string v2, "PFTBT.run()"

    invoke-interface {v0, v2}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 685
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 689
    iget-boolean v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v0, :cond_8e

    .line 690
    :goto_89
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0, v13, v14}, Lcom/android/server/backup/UserBackupManagerService;->scheduleNextFullBackupJob(J)V

    .line 694
    :cond_8e
    :goto_8e
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 695
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getBackupAgentConnectionManager()Lcom/android/server/backup/BackupAgentConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/BackupAgentConnectionManager;->clearNoRestrictedModePackages()V

    .line 697
    const-string v0, "PFTBT"

    const-string v2, "Full data backup pass finished."

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakeLock()Lcom/android/server/backup/BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/BackupWakeLock;->release()V

    return-void

    :catchall_a8
    move-exception v0

    .line 681
    :try_start_a9
    monitor-exit v2
    :try_end_aa
    .catchall {:try_start_a9 .. :try_end_aa} :catchall_a8

    throw v0

    :catchall_ab
    move-exception v0

    move-object v6, v12

    move-object v7, v6

    const/16 v2, -0x7d3

    const/16 v10, -0x3e8

    goto/16 :goto_6f6

    :catch_b4
    move-exception v0

    move-object v6, v12

    move-object v7, v6

    :goto_b7
    const/16 v2, -0x7d3

    :goto_b9
    const/16 v4, -0x3e8

    goto/16 :goto_680

    :catchall_bd
    move-exception v0

    move-object v6, v12

    move-object v7, v6

    :goto_c0
    const/16 v2, -0x7d3

    :goto_c2
    const/4 v10, 0x0

    goto/16 :goto_6f6

    .line 383
    :cond_c5
    :try_start_c5
    iget-object v3, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    invoke-virtual {v3}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->getMonitor()Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v3
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_cb} :catch_5b1
    .catchall {:try_start_c5 .. :try_end_cb} :catchall_5a8

    if-nez v3, :cond_de

    .line 385
    :try_start_cd
    iget-object v3, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    .line 386
    invoke-virtual {v0}, Lcom/android/server/backup/transport/BackupTransportClient;->getBackupManagerMonitor()Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->setMonitor(Landroid/app/backup/IBackupManagerMonitor;)V
    :try_end_d6
    .catch Landroid/os/RemoteException; {:try_start_cd .. :try_end_d6} :catch_d7
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_d6} :catch_b4
    .catchall {:try_start_cd .. :try_end_d6} :catchall_bd

    goto :goto_de

    .line 388
    :catch_d7
    :try_start_d7
    const-string v3, "PFTBT"

    const-string v4, "Failed to retrieve monitor from transport"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_de
    .catch Ljava/lang/Exception; {:try_start_d7 .. :try_end_de} :catch_b4
    .catchall {:try_start_d7 .. :try_end_de} :catchall_bd

    .line 394
    :cond_de
    :goto_de
    :try_start_de
    iget-object v3, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mPackages:Ljava/util/List;

    invoke-virtual {v1, v0, v3}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->setNoRestrictedModePackages(Lcom/android/server/backup/transport/BackupTransportClient;Ljava/util/List;)V

    .line 397
    iget-object v3, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mPackages:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/high16 v4, 0x10000

    .line 403
    new-array v4, v4, [B
    :try_end_ed
    .catch Ljava/lang/Exception; {:try_start_de .. :try_end_ed} :catch_5b1
    .catchall {:try_start_de .. :try_end_ed} :catchall_5a8

    move-object v6, v12

    move-object v7, v6

    move-wide/from16 v16, v13

    const/4 v5, 0x0

    :goto_f2
    if-ge v5, v3, :cond_136

    .line 405
    :try_start_f4
    iput-object v12, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    .line 406
    iget-object v8, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mPackages:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageInfo;

    .line 407
    iget-object v10, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 408
    const-string v11, "PFTBT"

    const/16 v18, 0x0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Initiating full-data transport backup of "

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " token: "

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentOpToken:I

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v9, 0xb18

    .line 410
    invoke-static {v9, v10}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 412
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v9
    :try_end_12b
    .catch Ljava/lang/Exception; {:try_start_f4 .. :try_end_12b} :catch_52c
    .catchall {:try_start_f4 .. :try_end_12b} :catchall_527

    .line 415
    :try_start_12b
    iget-boolean v7, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserInitiated:Z

    .line 418
    iget-object v11, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_130
    .catch Ljava/lang/Exception; {:try_start_12b .. :try_end_130} :catch_523
    .catchall {:try_start_12b .. :try_end_130} :catchall_51f

    .line 419
    :try_start_130
    iget-boolean v15, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelled:Z

    if-eqz v15, :cond_145

    .line 420
    monitor-exit v11

    move-object v7, v9

    :cond_136
    move-wide/from16 v21, v13

    const/16 v2, -0x7d3

    goto/16 :goto_531

    :catchall_13c
    move-exception v0

    :goto_13d
    move-wide/from16 v21, v13

    const/16 v2, -0x7d3

    const/16 v4, -0x3e8

    goto/16 :goto_50f

    .line 422
    :cond_145
    aget-object v15, v9, v18

    invoke-virtual {v0, v8, v15, v7}, Lcom/android/server/backup/transport/BackupTransportClient;->performFullBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;I)I

    move-result v15
    :try_end_14b
    .catchall {:try_start_130 .. :try_end_14b} :catchall_13c

    if-nez v15, :cond_19f

    .line 426
    :try_start_14d
    iget-object v7, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v7, v2}, Lcom/android/server/backup/transport/BackupTransportClient;->getBackupQuota(Ljava/lang/String;Z)J

    move-result-wide v19

    .line 429
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v21
    :try_end_157
    .catchall {:try_start_14d .. :try_end_157} :catchall_19b

    move-object v6, v0

    .line 430
    :try_start_158
    new-instance v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    move v7, v2

    aget-object v2, v21, v7

    move-object/from16 v22, v4

    iget-object v4, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    move/from16 v23, v7

    iget v7, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunnerOpToken:I

    move/from16 v24, v3

    move-object v3, v8

    .line 433
    invoke-virtual {v6}, Lcom/android/server/backup/transport/BackupTransportClient;->getTransportFlags()I

    move-result v8
    :try_end_16c
    .catchall {:try_start_158 .. :try_end_16c} :catchall_197

    move-object/from16 v25, v6

    move-object/from16 v26, v22

    move-wide/from16 v32, v19

    move/from16 v19, v5

    move-object/from16 v20, v12

    move-wide/from16 v5, v32

    move/from16 v12, v23

    :try_start_17a
    invoke-direct/range {v0 .. v8}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;-><init>(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;Landroid/os/ParcelFileDescriptor;Landroid/content/pm/PackageInfo;Lcom/android/server/backup/transport/TransportConnection;JII)V

    iput-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    .line 435
    aget-object v0, v21, v12

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 436
    aput-object v20, v21, v12

    .line 438
    iput-boolean v12, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mIsDoingBackup:Z
    :try_end_188
    .catchall {:try_start_17a .. :try_end_188} :catchall_18c

    move-wide v4, v5

    move-object/from16 v6, v21

    goto :goto_1b0

    :catchall_18c
    move-exception v0

    :goto_18d
    move-object/from16 v6, v21

    const/16 v2, -0x7d3

    const/16 v4, -0x3e8

    move-wide/from16 v21, v13

    goto/16 :goto_50f

    :catchall_197
    move-exception v0

    move-object/from16 v20, v12

    goto :goto_18d

    :catchall_19b
    move-exception v0

    move-object/from16 v20, v12

    goto :goto_13d

    :cond_19f
    move-object/from16 v25, v0

    move/from16 v24, v3

    move-object/from16 v26, v4

    move/from16 v19, v5

    move-object v3, v8

    move-object/from16 v20, v12

    move v12, v2

    const-wide v4, 0x7fffffffffffffffL

    .line 440
    :goto_1b0
    :try_start_1b0
    monitor-exit v11
    :try_end_1b1
    .catchall {:try_start_1b0 .. :try_end_1b1} :catchall_13c

    const/16 v0, -0x3ed

    if-nez v15, :cond_326

    .line 445
    :try_start_1b5
    aget-object v2, v9, v18

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 446
    aput-object v20, v9, v18

    .line 450
    new-instance v2, Ljava/lang/Thread;

    iget-object v7, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    const-string/jumbo v8, "package-backup-bridge"

    invoke-direct {v2, v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 455
    new-instance v2, Ljava/io/FileInputStream;

    aget-object v7, v6, v18

    .line 456
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 457
    new-instance v7, Ljava/io/FileOutputStream;

    aget-object v8, v9, v12

    .line 458
    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 460
    iget-object v8, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;
    :try_end_1e1
    .catch Ljava/lang/Exception; {:try_start_1b5 .. :try_end_1e1} :catch_322
    .catchall {:try_start_1b5 .. :try_end_1e1} :catchall_31e

    move-wide/from16 v21, v13

    :try_start_1e3
    invoke-virtual {v8}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->getPreflightResultBlocking()J

    move-result-wide v12
    :try_end_1e7
    .catch Ljava/lang/Exception; {:try_start_1e3 .. :try_end_1e7} :catch_20c
    .catchall {:try_start_1e3 .. :try_end_1e7} :catchall_250

    cmp-long v8, v12, v16

    if-gez v8, :cond_212

    .line 468
    :try_start_1eb
    iget-object v2, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    const-string v4, "android.app.backup.extra.LOG_PREFLIGHT_ERROR"

    move-object/from16 v5, v20

    .line 472
    invoke-static {v5, v4, v12, v13}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;J)Landroid/os/Bundle;

    move-result-object v4

    const/16 v5, 0x10

    const/4 v7, 0x3

    .line 468
    invoke-virtual {v2, v5, v3, v7, v4}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V
    :try_end_1fb
    .catch Ljava/lang/Exception; {:try_start_1eb .. :try_end_1fb} :catch_20c
    .catchall {:try_start_1eb .. :try_end_1fb} :catchall_202

    long-to-int v2, v12

    move-object/from16 v30, v25

    move-object/from16 v31, v26

    goto/16 :goto_2b2

    :catchall_202
    move-exception v0

    move-object v7, v9

    move/from16 v10, v18

    move-wide/from16 v13, v21

    const/16 v2, -0x7d3

    goto/16 :goto_6f6

    :catch_20c
    move-exception v0

    move-object v7, v9

    move-wide/from16 v13, v21

    goto/16 :goto_b7

    :cond_212
    move-object/from16 v11, v26

    move-wide/from16 v26, v16

    .line 480
    :goto_216
    :try_start_216
    invoke-virtual {v2, v11}, Ljava/io/FileInputStream;->read([B)I

    move-result v14

    if-lez v14, :cond_25b

    move-object/from16 v28, v2

    move/from16 v2, v18

    .line 485
    invoke-virtual {v7, v11, v2, v14}, Ljava/io/FileOutputStream;->write([BII)V

    .line 486
    iget-object v2, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_226
    .catch Ljava/lang/Exception; {:try_start_216 .. :try_end_226} :catch_20c
    .catchall {:try_start_216 .. :try_end_226} :catchall_250

    move-object/from16 v29, v7

    .line 487
    :try_start_228
    iget-boolean v7, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelled:Z

    if-nez v7, :cond_235

    move-object/from16 v7, v25

    .line 488
    invoke-virtual {v7, v14}, Lcom/android/server/backup/transport/BackupTransportClient;->sendBackupData(I)I

    move-result v15

    goto :goto_237

    :catchall_233
    move-exception v0

    goto :goto_259

    :cond_235
    move-object/from16 v7, v25

    .line 490
    :goto_237
    monitor-exit v2
    :try_end_238
    .catchall {:try_start_228 .. :try_end_238} :catchall_233

    move-object/from16 v30, v7

    move/from16 v25, v8

    int-to-long v7, v14

    add-long v7, v26, v7

    .line 492
    :try_start_23f
    iget-object v2, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    if-eqz v2, :cond_256

    if-lez v25, :cond_256

    move-object/from16 v31, v11

    .line 493
    new-instance v11, Landroid/app/backup/BackupProgress;

    invoke-direct {v11, v12, v13, v7, v8}, Landroid/app/backup/BackupProgress;-><init>(JJ)V

    .line 494
    invoke-static {v2, v10, v11}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnUpdate(Landroid/app/backup/IBackupObserver;Ljava/lang/String;Landroid/app/backup/BackupProgress;)V
    :try_end_24f
    .catch Ljava/lang/Exception; {:try_start_23f .. :try_end_24f} :catch_20c
    .catchall {:try_start_23f .. :try_end_24f} :catchall_250

    goto :goto_267

    :catchall_250
    move-exception v0

    move-object v7, v9

    move-wide/from16 v13, v21

    goto/16 :goto_c0

    :cond_256
    move-object/from16 v31, v11

    goto :goto_267

    .line 490
    :goto_259
    :try_start_259
    monitor-exit v2
    :try_end_25a
    .catchall {:try_start_259 .. :try_end_25a} :catchall_233

    :try_start_25a
    throw v0

    :cond_25b
    move-object/from16 v28, v2

    move-object/from16 v29, v7

    move-object/from16 v31, v11

    move-object/from16 v30, v25

    move/from16 v25, v8

    move-wide/from16 v7, v26

    :goto_267
    if-lez v14, :cond_27b

    if-eqz v15, :cond_26c

    goto :goto_27b

    :cond_26c
    move-wide/from16 v26, v7

    move/from16 v8, v25

    move-object/from16 v2, v28

    move-object/from16 v7, v29

    move-object/from16 v25, v30

    move-object/from16 v11, v31

    const/16 v18, 0x0

    goto :goto_216

    :cond_27b
    :goto_27b
    if-ne v15, v0, :cond_2b1

    .line 502
    const-string v2, "PFTBT"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Package hit quota limit in-flight "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, " of "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    iget-object v2, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    const/16 v11, 0x12

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual {v2, v11, v3, v12, v13}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 509
    iget-object v2, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    invoke-virtual {v2, v7, v8, v4, v5}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->sendQuotaExceeded(JJ)V

    :cond_2b1
    move v2, v15

    .line 513
    :goto_2b2
    iget-object v4, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    invoke-virtual {v4}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->getBackupResultBlocking()I

    move-result v4

    .line 515
    iget-object v5, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_2bb
    .catch Ljava/lang/Exception; {:try_start_25a .. :try_end_2bb} :catch_20c
    .catchall {:try_start_25a .. :try_end_2bb} :catchall_250

    const/4 v7, 0x0

    .line 516
    :try_start_2bc
    iput-boolean v7, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mIsDoingBackup:Z

    .line 518
    iget-boolean v7, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelled:Z

    if-nez v7, :cond_2d1

    if-nez v4, :cond_2ce

    .line 524
    invoke-virtual/range {v30 .. v30}, Lcom/android/server/backup/transport/BackupTransportClient;->finishBackup()I

    move-result v7

    if-nez v2, :cond_2d1

    move v2, v7

    goto :goto_2d1

    :catchall_2cc
    move-exception v0

    goto :goto_31c

    .line 529
    :cond_2ce
    invoke-virtual/range {v30 .. v30}, Lcom/android/server/backup/transport/BackupTransportClient;->cancelFullBackup()V

    .line 532
    :cond_2d1
    :goto_2d1
    monitor-exit v5
    :try_end_2d2
    .catchall {:try_start_2bc .. :try_end_2d2} :catchall_2cc

    if-nez v2, :cond_2d8

    if-eqz v4, :cond_2d8

    move v15, v4

    goto :goto_2d9

    :cond_2d8
    move v15, v2

    :goto_2d9
    if-eqz v15, :cond_2f9

    .line 562
    :try_start_2db
    const-string v2, "PFTBT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " backing up "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    :cond_2f9
    invoke-virtual/range {v30 .. v30}, Lcom/android/server/backup/transport/BackupTransportClient;->requestFullBackupTime()J

    move-result-wide v13
    :try_end_2fd
    .catch Ljava/lang/Exception; {:try_start_2db .. :try_end_2fd} :catch_20c
    .catchall {:try_start_2db .. :try_end_2fd} :catchall_250

    .line 569
    :try_start_2fd
    const-string v2, "PFTBT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Transport suggested backoff="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_313
    .catch Ljava/lang/Exception; {:try_start_2fd .. :try_end_313} :catch_318
    .catchall {:try_start_2fd .. :try_end_313} :catchall_314

    goto :goto_32c

    :catchall_314
    move-exception v0

    :goto_315
    move-object v7, v9

    goto/16 :goto_c0

    :catch_318
    move-exception v0

    :goto_319
    move-object v7, v9

    goto/16 :goto_b7

    .line 532
    :goto_31c
    :try_start_31c
    monitor-exit v5
    :try_end_31d
    .catchall {:try_start_31c .. :try_end_31d} :catchall_2cc

    :try_start_31d
    throw v0
    :try_end_31e
    .catch Ljava/lang/Exception; {:try_start_31d .. :try_end_31e} :catch_20c
    .catchall {:try_start_31d .. :try_end_31e} :catchall_250

    :catchall_31e
    move-exception v0

    move-wide/from16 v21, v13

    goto :goto_315

    :catch_322
    move-exception v0

    move-wide/from16 v21, v13

    goto :goto_319

    :cond_326
    move-wide/from16 v21, v13

    move-object/from16 v30, v25

    move-object/from16 v31, v26

    .line 574
    :goto_32c
    :try_start_32c
    iget-boolean v2, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z
    :try_end_32e
    .catch Ljava/lang/Exception; {:try_start_32c .. :try_end_32e} :catch_50b
    .catchall {:try_start_32c .. :try_end_32e} :catchall_506

    if-eqz v2, :cond_339

    .line 575
    :try_start_330
    iget-object v2, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 576
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 575
    invoke-virtual {v2, v10, v4, v5}, Lcom/android/server/backup/UserBackupManagerService;->enqueueFullBackup(Ljava/lang/String;J)V

    :cond_339
    const/16 v2, -0x3ea

    if-ne v15, v2, :cond_380

    .line 580
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v0, v10, v2}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 582
    const-string v0, "PFTBT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Transport rejected backup of "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", skipping"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    const-string/jumbo v0, "transport rejected"

    filled-new-array {v10, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xb19

    invoke-static {v2, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 588
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    if-eqz v0, :cond_379

    .line 589
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getBackupAgentConnectionManager()Lcom/android/server/backup/BackupAgentConnectionManager;

    move-result-object v0

    iget-object v2, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v12, 0x1

    invoke-virtual {v0, v2, v12}, Lcom/android/server/backup/BackupAgentConnectionManager;->unbindAgent(Landroid/content/pm/ApplicationInfo;Z)V

    :cond_379
    :goto_379
    const/16 v2, -0x7d3

    :goto_37b
    const/16 v4, -0x3e8

    const/4 v12, 0x1

    goto/16 :goto_4ce

    :cond_380
    if-ne v15, v0, :cond_3af

    .line 594
    iget-object v2, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 595
    invoke-static {v2, v10, v0}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 597
    const-string v0, "PFTBT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Transport quota exceeded for package: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xb1d

    .line 598
    invoke-static {v0, v10}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 599
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getBackupAgentConnectionManager()Lcom/android/server/backup/BackupAgentConnectionManager;

    move-result-object v0

    iget-object v2, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v12, 0x1

    invoke-virtual {v0, v2, v12}, Lcom/android/server/backup/BackupAgentConnectionManager;->unbindAgent(Landroid/content/pm/ApplicationInfo;Z)V

    goto :goto_379

    :cond_3af
    const/16 v0, -0x3eb

    if-ne v15, v0, :cond_3e0

    .line 603
    iget-object v2, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 604
    invoke-static {v2, v10, v0}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 606
    const-string v0, "PFTBT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Application failure for package: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xb07

    .line 607
    invoke-static {v0, v10}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 608
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getBackupAgentConnectionManager()Lcom/android/server/backup/BackupAgentConnectionManager;

    move-result-object v0

    iget-object v2, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v12, 0x1

    invoke-virtual {v0, v2, v12}, Lcom/android/server/backup/BackupAgentConnectionManager;->unbindAgent(Landroid/content/pm/ApplicationInfo;Z)V
    :try_end_3df
    .catch Ljava/lang/Exception; {:try_start_330 .. :try_end_3df} :catch_318
    .catchall {:try_start_330 .. :try_end_3df} :catchall_314

    goto :goto_379

    :cond_3e0
    const/16 v2, -0x7d3

    if-ne v15, v2, :cond_424

    .line 612
    :try_start_3e4
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 613
    invoke-static {v0, v10, v2}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 615
    const-string v0, "PFTBT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Backup cancelled. package="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", entire session cancelled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xb1e

    .line 617
    invoke-static {v0, v10}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 618
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getBackupAgentConnectionManager()Lcom/android/server/backup/BackupAgentConnectionManager;

    move-result-object v0

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v12, 0x1

    invoke-virtual {v0, v4, v12}, Lcom/android/server/backup/BackupAgentConnectionManager;->unbindAgent(Landroid/content/pm/ApplicationInfo;Z)V
    :try_end_41a
    .catch Ljava/lang/Exception; {:try_start_3e4 .. :try_end_41a} :catch_420
    .catchall {:try_start_3e4 .. :try_end_41a} :catchall_41c

    goto/16 :goto_37b

    :catchall_41c
    move-exception v0

    :goto_41d
    move-object v7, v9

    goto/16 :goto_c2

    :catch_420
    move-exception v0

    move-object v7, v9

    goto/16 :goto_b9

    :cond_424
    if-eqz v15, :cond_4bb

    .line 622
    :try_start_426
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;
    :try_end_428
    .catch Ljava/lang/Exception; {:try_start_426 .. :try_end_428} :catch_4b7
    .catchall {:try_start_426 .. :try_end_428} :catchall_41c

    const/16 v4, -0x3e8

    .line 623
    :try_start_42a
    invoke-static {v0, v10, v4}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 625
    const-string v0, "PFTBT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Transport failed; aborting backup: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    .line 626
    new-array v0, v7, [Ljava/lang/Object;

    const/16 v5, 0xb1a

    invoke-static {v5, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_44b
    .catch Ljava/lang/Exception; {:try_start_42a .. :try_end_44b} :catch_4b3
    .catchall {:try_start_42a .. :try_end_44b} :catchall_41c

    .line 629
    :try_start_44b
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getBackupAgentConnectionManager()Lcom/android/server/backup/BackupAgentConnectionManager;

    move-result-object v0

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v12, 0x1

    invoke-virtual {v0, v3, v12}, Lcom/android/server/backup/BackupAgentConnectionManager;->unbindAgent(Landroid/content/pm/ApplicationInfo;Z)V
    :try_end_457
    .catch Ljava/lang/Exception; {:try_start_44b .. :try_end_457} :catch_4b3
    .catchall {:try_start_44b .. :try_end_457} :catchall_4ae

    .line 663
    iget-boolean v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelled:Z

    if-eqz v0, :cond_45d

    move v10, v2

    goto :goto_45e

    :cond_45d
    move v10, v4

    .line 667
    :goto_45e
    const-string v0, "PFTBT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Full backup completed with status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v0, v10}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 670
    invoke-virtual {v1, v9}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 671
    invoke-virtual {v1, v6}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 673
    invoke-virtual {v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    .line 675
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v0, :cond_48b

    .line 676
    iget v2, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserId:I

    invoke-virtual {v0, v2}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass(I)V

    .line 679
    :cond_48b
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 680
    :try_start_492
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/android/server/backup/UserBackupManagerService;->setRunningFullBackupTask(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)V

    .line 681
    monitor-exit v3
    :try_end_499
    .catchall {:try_start_492 .. :try_end_499} :catchall_4ab

    .line 683
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    const-string v2, "PFTBT.run()"

    invoke-interface {v0, v2}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 685
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 689
    iget-boolean v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v0, :cond_8e

    goto/16 :goto_89

    :catchall_4ab
    move-exception v0

    .line 681
    :try_start_4ac
    monitor-exit v3
    :try_end_4ad
    .catchall {:try_start_4ac .. :try_end_4ad} :catchall_4ab

    throw v0

    :catchall_4ae
    move-exception v0

    move v10, v4

    move-object v7, v9

    goto/16 :goto_6f6

    :catch_4b3
    move-exception v0

    :goto_4b4
    move-object v7, v9

    goto/16 :goto_680

    :catch_4b7
    move-exception v0

    :goto_4b8
    const/16 v4, -0x3e8

    goto :goto_4b4

    :cond_4bb
    const/16 v4, -0x3e8

    const/4 v12, 0x1

    .line 634
    :try_start_4be
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    const/4 v7, 0x0

    .line 635
    invoke-static {v0, v10, v7}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    const/16 v0, 0xb1b

    .line 637
    invoke-static {v0, v10}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 638
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0, v10}, Lcom/android/server/backup/UserBackupManagerService;->logBackupComplete(Ljava/lang/String;)V

    .line 640
    :goto_4ce
    invoke-virtual {v1, v9}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 641
    invoke-virtual {v1, v6}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 642
    iget-object v0, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_4f9

    .line 643
    const-string v0, "PFTBT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unbinding agent in "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4ee
    .catch Ljava/lang/Exception; {:try_start_4be .. :try_end_4ee} :catch_4b3
    .catchall {:try_start_4be .. :try_end_4ee} :catchall_41c

    .line 645
    :try_start_4ee
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getActivityManager()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v0, v3}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V
    :try_end_4f9
    .catch Landroid/os/RemoteException; {:try_start_4ee .. :try_end_4f9} :catch_4f9
    .catch Ljava/lang/Exception; {:try_start_4ee .. :try_end_4f9} :catch_4b3
    .catchall {:try_start_4ee .. :try_end_4f9} :catchall_41c

    :catch_4f9
    :cond_4f9
    add-int/lit8 v5, v19, 0x1

    move-object v7, v9

    move v2, v12

    move/from16 v3, v24

    move-object/from16 v0, v30

    move-object/from16 v4, v31

    const/4 v12, 0x0

    goto/16 :goto_f2

    :catchall_506
    move-exception v0

    :goto_507
    const/16 v2, -0x7d3

    goto/16 :goto_41d

    :catch_50b
    move-exception v0

    :goto_50c
    const/16 v2, -0x7d3

    goto :goto_4b8

    .line 440
    :goto_50f
    :try_start_50f
    monitor-exit v11
    :try_end_510
    .catchall {:try_start_50f .. :try_end_510} :catchall_51d

    :try_start_510
    throw v0
    :try_end_511
    .catch Ljava/lang/Exception; {:try_start_510 .. :try_end_511} :catch_517
    .catchall {:try_start_510 .. :try_end_511} :catchall_511

    :catchall_511
    move-exception v0

    move-object v7, v9

    move-wide/from16 v13, v21

    goto/16 :goto_c2

    :catch_517
    move-exception v0

    move-object v7, v9

    move-wide/from16 v13, v21

    goto/16 :goto_680

    :catchall_51d
    move-exception v0

    goto :goto_50f

    :catchall_51f
    move-exception v0

    move-wide/from16 v21, v13

    goto :goto_507

    :catch_523
    move-exception v0

    move-wide/from16 v21, v13

    goto :goto_50c

    :catchall_527
    move-exception v0

    move-wide/from16 v21, v13

    goto/16 :goto_c0

    :catch_52c
    move-exception v0

    move-wide/from16 v21, v13

    goto/16 :goto_b7

    .line 663
    :goto_531
    iget-boolean v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelled:Z

    if-eqz v0, :cond_537

    move v11, v2

    goto :goto_538

    :cond_537
    const/4 v11, 0x0

    .line 667
    :goto_538
    const-string v0, "PFTBT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Full backup completed with status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v0, v11}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 670
    invoke-virtual {v1, v7}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 671
    invoke-virtual {v1, v6}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 673
    invoke-virtual {v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    .line 675
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v0, :cond_565

    .line 676
    iget v2, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserId:I

    invoke-virtual {v0, v2}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass(I)V

    .line 679
    :cond_565
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 680
    :try_start_56c
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/android/server/backup/UserBackupManagerService;->setRunningFullBackupTask(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)V

    .line 681
    monitor-exit v3
    :try_end_573
    .catchall {:try_start_56c .. :try_end_573} :catchall_5a5

    .line 683
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    const-string v2, "PFTBT.run()"

    invoke-interface {v0, v2}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 685
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 689
    iget-boolean v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v0, :cond_58a

    .line 690
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    move-wide/from16 v13, v21

    :goto_587
    invoke-virtual {v0, v13, v14}, Lcom/android/server/backup/UserBackupManagerService;->scheduleNextFullBackupJob(J)V

    .line 694
    :cond_58a
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 695
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getBackupAgentConnectionManager()Lcom/android/server/backup/BackupAgentConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/BackupAgentConnectionManager;->clearNoRestrictedModePackages()V

    .line 697
    const-string v0, "PFTBT"

    const-string v2, "Full data backup pass finished."

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakeLock()Lcom/android/server/backup/BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/BackupWakeLock;->release()V

    goto/16 :goto_6f0

    :catchall_5a5
    move-exception v0

    .line 681
    :try_start_5a6
    monitor-exit v3
    :try_end_5a7
    .catchall {:try_start_5a6 .. :try_end_5a7} :catchall_5a5

    throw v0

    :catchall_5a8
    move-exception v0

    move-wide/from16 v16, v13

    const/16 v2, -0x7d3

    const/4 v6, 0x0

    const/4 v7, 0x0

    goto/16 :goto_c2

    :catch_5b1
    move-exception v0

    move-wide/from16 v16, v13

    :goto_5b4
    const/16 v2, -0x7d3

    const/16 v4, -0x3e8

    :goto_5b8
    const/4 v6, 0x0

    const/4 v7, 0x0

    goto/16 :goto_680

    .line 349
    :goto_5bc
    :try_start_5bc
    const-string v0, "PFTBT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "full backup requested but enabled="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 350
    invoke-virtual {v5}, Lcom/android/server/backup/UserBackupManagerService;->isEnabled()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " setupComplete="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 351
    invoke-virtual {v5}, Lcom/android/server/backup/UserBackupManagerService;->isSetupComplete()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "; ignoring"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 349
    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->isSetupComplete()Z

    move-result v0

    if-eqz v0, :cond_5f6

    const/16 v0, 0xd

    goto :goto_5f8

    :cond_5f6
    const/16 v0, 0xe

    .line 359
    :goto_5f8
    iget-object v3, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    const/4 v5, 0x0

    const/4 v7, 0x3

    invoke-virtual {v3, v0, v5, v7, v5}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V
    :try_end_5ff
    .catch Ljava/lang/Exception; {:try_start_5bc .. :try_end_5ff} :catch_66b
    .catchall {:try_start_5bc .. :try_end_5ff} :catchall_671

    const/4 v7, 0x0

    .line 364
    :try_start_600
    iput-boolean v7, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z
    :try_end_602
    .catch Ljava/lang/Exception; {:try_start_600 .. :try_end_602} :catch_66b
    .catchall {:try_start_600 .. :try_end_602} :catchall_662

    .line 663
    iget-boolean v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelled:Z

    if-eqz v0, :cond_608

    move v11, v2

    goto :goto_60a

    :cond_608
    const/16 v11, -0x7d1

    .line 667
    :goto_60a
    const-string v0, "PFTBT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Full backup completed with status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v0, v11}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    const/4 v5, 0x0

    .line 670
    invoke-virtual {v1, v5}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 671
    invoke-virtual {v1, v5}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 673
    invoke-virtual {v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    .line 675
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v0, :cond_638

    .line 676
    iget v2, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserId:I

    invoke-virtual {v0, v2}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass(I)V

    .line 679
    :cond_638
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 680
    :try_start_63f
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/android/server/backup/UserBackupManagerService;->setRunningFullBackupTask(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)V

    .line 681
    monitor-exit v3
    :try_end_646
    .catchall {:try_start_63f .. :try_end_646} :catchall_65f

    .line 683
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    const-string v2, "PFTBT.run()"

    invoke-interface {v0, v2}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 685
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 689
    iget-boolean v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v0, :cond_8e

    .line 690
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    move-wide/from16 v5, v16

    invoke-virtual {v0, v5, v6}, Lcom/android/server/backup/UserBackupManagerService;->scheduleNextFullBackupJob(J)V

    goto/16 :goto_8e

    :catchall_65f
    move-exception v0

    .line 681
    :try_start_660
    monitor-exit v3
    :try_end_661
    .catchall {:try_start_660 .. :try_end_661} :catchall_65f

    throw v0

    :catchall_662
    move-exception v0

    move-wide/from16 v5, v16

    :goto_665
    move-wide v13, v5

    :goto_666
    move v10, v7

    const/4 v6, 0x0

    const/4 v7, 0x0

    goto/16 :goto_6f6

    :catch_66b
    move-exception v0

    move-wide/from16 v5, v16

    move-wide v13, v5

    goto/16 :goto_5b8

    :catchall_671
    move-exception v0

    move-wide/from16 v5, v16

    const/4 v7, 0x0

    goto :goto_665

    :catchall_676
    move-exception v0

    move-wide v5, v13

    const/16 v2, -0x7d3

    const/4 v7, 0x0

    goto :goto_666

    :catch_67c
    move-exception v0

    move-wide v5, v13

    goto/16 :goto_5b4

    .line 652
    :goto_680
    :try_start_680
    const-string v3, "PFTBT"

    const-string v5, "Exception trying full transport backup"

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 653
    iget-object v3, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    const-string v5, "android.app.backup.extra.LOG_EXCEPTION_FULL_BACKUP"

    .line 659
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x0

    .line 657
    invoke-static {v8, v5, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const/16 v5, 0x13

    const/4 v9, 0x3

    .line 653
    invoke-virtual {v3, v5, v8, v9, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V
    :try_end_69a
    .catchall {:try_start_680 .. :try_end_69a} :catchall_6f4

    .line 663
    iget-boolean v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelled:Z

    if-eqz v0, :cond_6a0

    move v10, v2

    goto :goto_6a1

    :cond_6a0
    move v10, v4

    .line 667
    :goto_6a1
    const-string v0, "PFTBT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Full backup completed with status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v0, v10}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 670
    invoke-virtual {v1, v7}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 671
    invoke-virtual {v1, v6}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 673
    invoke-virtual {v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    .line 675
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v0, :cond_6ce

    .line 676
    iget v2, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserId:I

    invoke-virtual {v0, v2}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass(I)V

    .line 679
    :cond_6ce
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 680
    :try_start_6d5
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/android/server/backup/UserBackupManagerService;->setRunningFullBackupTask(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)V

    .line 681
    monitor-exit v3
    :try_end_6dc
    .catchall {:try_start_6d5 .. :try_end_6dc} :catchall_6f1

    .line 683
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    const-string v2, "PFTBT.run()"

    invoke-interface {v0, v2}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 685
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 689
    iget-boolean v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v0, :cond_58a

    .line 690
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    goto/16 :goto_587

    :goto_6f0
    return-void

    :catchall_6f1
    move-exception v0

    .line 681
    :try_start_6f2
    monitor-exit v3
    :try_end_6f3
    .catchall {:try_start_6f2 .. :try_end_6f3} :catchall_6f1

    throw v0

    :catchall_6f4
    move-exception v0

    move v10, v4

    .line 663
    :goto_6f6
    iget-boolean v3, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelled:Z

    if-eqz v3, :cond_6fc

    move v11, v2

    goto :goto_6fd

    :cond_6fc
    move v11, v10

    .line 667
    :goto_6fd
    const-string v2, "PFTBT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Full backup completed with status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    iget-object v2, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v2, v11}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 670
    invoke-virtual {v1, v7}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 671
    invoke-virtual {v1, v6}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 673
    invoke-virtual {v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    .line 675
    iget-object v2, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v2, :cond_72a

    .line 676
    iget v3, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass(I)V

    .line 679
    :cond_72a
    iget-object v2, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 680
    :try_start_731
    iget-object v3, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/server/backup/UserBackupManagerService;->setRunningFullBackupTask(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)V

    .line 681
    monitor-exit v2
    :try_end_738
    .catchall {:try_start_731 .. :try_end_738} :catchall_767

    .line 683
    iget-object v2, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    const-string v3, "PFTBT.run()"

    invoke-interface {v2, v3}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 685
    iget-object v2, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 689
    iget-boolean v2, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v2, :cond_74d

    .line 690
    iget-object v2, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2, v13, v14}, Lcom/android/server/backup/UserBackupManagerService;->scheduleNextFullBackupJob(J)V

    .line 694
    :cond_74d
    iget-object v2, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 695
    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getBackupAgentConnectionManager()Lcom/android/server/backup/BackupAgentConnectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/backup/BackupAgentConnectionManager;->clearNoRestrictedModePackages()V

    .line 697
    const-string v2, "PFTBT"

    const-string v3, "Full data backup pass finished."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    iget-object v1, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getWakeLock()Lcom/android/server/backup/BackupWakeLock;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/backup/BackupWakeLock;->release()V

    .line 699
    throw v0

    :catchall_767
    move-exception v0

    .line 681
    :try_start_768
    monitor-exit v2
    :try_end_769
    .catchall {:try_start_768 .. :try_end_769} :catchall_767

    throw v0
.end method

.method public final setNoRestrictedModePackages(Lcom/android/server/backup/transport/BackupTransportClient;Ljava/util/List;)V
    .registers 7

    .line 728
    :try_start_0
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 729
    :goto_7
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1b

    .line 730
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 732
    :cond_1b
    invoke-virtual {p1, v0, v1}, Lcom/android/server/backup/transport/BackupTransportClient;->getPackagesThatShouldNotUseRestrictedMode(Ljava/util/Set;I)Ljava/util/Set;

    move-result-object p1

    .line 734
    iget-object p0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->getBackupAgentConnectionManager()Lcom/android/server/backup/BackupAgentConnectionManager;

    move-result-object p0

    invoke-virtual {p0, p1, v1}, Lcom/android/server/backup/BackupAgentConnectionManager;->setNoRestrictedModePackages(Ljava/util/Set;I)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_28} :catch_29

    return-void

    .line 737
    :catch_29
    const-string p0, "PFTBT"

    const-string p1, "Failed to retrieve no restricted mode packages from transport"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public unregisterTask()V
    .registers 2

    .line 281
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    iget p0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentOpToken:I

    invoke-interface {v0, p0}, Lcom/android/server/backup/OperationStorage;->removeOperation(I)V

    return-void
.end method
