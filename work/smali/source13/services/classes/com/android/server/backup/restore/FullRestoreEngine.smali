.class public Lcom/android/server/backup/restore/FullRestoreEngine;
.super Lcom/android/server/backup/restore/RestoreEngine;
.source "FullRestoreEngine.java"


# instance fields
.field private mAgent:Landroid/app/IBackupAgent;

.field private mAgentPackage:Ljava/lang/String;

.field private final mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

.field final mAllowApks:Z

.field private mAppVersion:J

.field private final mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

.field private final mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field final mBuffer:[B

.field private final mClearedPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeleteObserver:Lcom/android/server/backup/restore/RestoreDeleteObserver;

.field final mEphemeralOpToken:I

.field public mInputFD:I

.field private final mIsAdbRestore:Z

.field private final mManifestSignatures:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation
.end field

.field final mMonitor:Landroid/app/backup/IBackupManagerMonitor;

.field private final mMonitorTask:Lcom/android/server/backup/BackupRestoreTask;

.field private mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

.field private mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

.field final mOnlyPackage:Landroid/content/pm/PackageInfo;

.field private final mOperationStorage:Lcom/android/server/backup/OperationStorage;

.field private final mPackageInstallers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackagePolicies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/restore/RestorePolicy;",
            ">;"
        }
    .end annotation
.end field

.field private mPipes:[Landroid/os/ParcelFileDescriptor;

.field private mPipesClosed:Z

.field private final mPipesLock:Ljava/lang/Object;

.field private mReadOnlyParent:Lcom/android/server/backup/FileMetadata;

.field private mTargetApp:Landroid/content/pm/ApplicationInfo;

.field private final mUserId:I

.field private mWidgetData:[B


# direct methods
.method constructor <init>()V
    .registers 3

    .line 173
    invoke-direct {p0}, Lcom/android/server/backup/restore/RestoreEngine;-><init>()V

    .line 88
    new-instance v0, Lcom/android/server/backup/restore/RestoreDeleteObserver;

    invoke-direct {v0}, Lcom/android/server/backup/restore/RestoreDeleteObserver;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mDeleteObserver:Lcom/android/server/backup/restore/RestoreDeleteObserver;

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    .line 113
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    .line 117
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackageInstallers:Ljava/util/HashMap;

    .line 120
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mManifestSignatures:Ljava/util/HashMap;

    .line 124
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mClearedPackages:Ljava/util/HashSet;

    .line 130
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    .line 131
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipesLock:Ljava/lang/Object;

    .line 134
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mWidgetData:[B

    .line 145
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mReadOnlyParent:Lcom/android/server/backup/FileMetadata;

    .line 174
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mIsAdbRestore:Z

    .line 175
    iput-boolean v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAllowApks:Z

    .line 176
    iput v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mEphemeralOpToken:I

    .line 177
    iput v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mUserId:I

    .line 178
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 179
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 180
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBuffer:[B

    .line 181
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 182
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    .line 183
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 184
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mMonitorTask:Lcom/android/server/backup/BackupRestoreTask;

    .line 185
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mOnlyPackage:Landroid/content/pm/PackageInfo;

    .line 186
    return-void
.end method

.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/OperationStorage;Lcom/android/server/backup/BackupRestoreTask;Landroid/app/backup/IFullBackupRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;Landroid/content/pm/PackageInfo;ZIZLcom/android/server/backup/utils/BackupEligibilityRules;)V
    .registers 13
    .param p1, "backupManagerService"    # Lcom/android/server/backup/UserBackupManagerService;
    .param p2, "operationStorage"    # Lcom/android/server/backup/OperationStorage;
    .param p3, "monitorTask"    # Lcom/android/server/backup/BackupRestoreTask;
    .param p4, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;
    .param p5, "monitor"    # Landroid/app/backup/IBackupManagerMonitor;
    .param p6, "onlyPackage"    # Landroid/content/pm/PackageInfo;
    .param p7, "allowApks"    # Z
    .param p8, "ephemeralOpToken"    # I
    .param p9, "isAdbRestore"    # Z
    .param p10, "backupEligibilityRules"    # Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 154
    invoke-direct {p0}, Lcom/android/server/backup/restore/RestoreEngine;-><init>()V

    .line 88
    new-instance v0, Lcom/android/server/backup/restore/RestoreDeleteObserver;

    invoke-direct {v0}, Lcom/android/server/backup/restore/RestoreDeleteObserver;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mDeleteObserver:Lcom/android/server/backup/restore/RestoreDeleteObserver;

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    .line 113
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    .line 117
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackageInstallers:Ljava/util/HashMap;

    .line 120
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mManifestSignatures:Ljava/util/HashMap;

    .line 124
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mClearedPackages:Ljava/util/HashSet;

    .line 130
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    .line 131
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipesLock:Ljava/lang/Object;

    .line 134
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mWidgetData:[B

    .line 145
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mReadOnlyParent:Lcom/android/server/backup/FileMetadata;

    .line 155
    iput-object p1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 156
    iput-object p2, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    .line 157
    iput p8, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mEphemeralOpToken:I

    .line 158
    iput-object p3, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mMonitorTask:Lcom/android/server/backup/BackupRestoreTask;

    .line 159
    iput-object p4, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 160
    iput-object p5, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 161
    iput-object p6, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mOnlyPackage:Landroid/content/pm/PackageInfo;

    .line 162
    iput-boolean p7, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAllowApks:Z

    .line 163
    const v0, 0x8000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBuffer:[B

    .line 164
    nop

    .line 165
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getAgentTimeoutParameters()Lcom/android/server/backup/BackupAgentTimeoutParameters;

    move-result-object v0

    .line 164
    const-string v1, "Timeout parameters cannot be null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/BackupAgentTimeoutParameters;

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 167
    iput-boolean p9, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mIsAdbRestore:Z

    .line 168
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getUserId()I

    move-result v0

    iput v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mUserId:I

    .line 169
    iput-object p10, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 170
    return-void
.end method

.method private static getPathWithTrailingSeparator(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "path"    # Ljava/lang/String;

    .line 700
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    move-object v0, p0

    goto :goto_1d

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1d
    return-object v0
.end method

.method private static isCanonicalFilePath(Ljava/lang/String;)Z
    .registers 3
    .param p0, "path"    # Ljava/lang/String;

    .line 811
    const-string v0, ".."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "//"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    .line 818
    :cond_11
    const/4 v0, 0x1

    return v0

    .line 812
    :cond_13
    :goto_13
    sget-boolean v0, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v0, :cond_2f

    .line 813
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dropping invalid path "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    :cond_2f
    const/4 v0, 0x0

    return v0
.end method

.method private static isReadOnlyDir(Lcom/android/server/backup/FileMetadata;)Z
    .registers 5
    .param p0, "file"    # Lcom/android/server/backup/FileMetadata;

    .line 705
    iget v0, p0, Lcom/android/server/backup/FileMetadata;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_13

    iget-wide v0, p0, Lcom/android/server/backup/FileMetadata;->mode:J

    sget v2, Landroid/system/OsConstants;->S_IWUSR:I

    int-to-long v2, v2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method private isRestorableFile(Lcom/android/server/backup/FileMetadata;)Z
    .registers 7
    .param p1, "info"    # Lcom/android/server/backup/FileMetadata;

    .line 782
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    invoke-virtual {v0}, Lcom/android/server/backup/utils/BackupEligibilityRules;->getOperationType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 784
    return v1

    .line 786
    :cond_a
    iget-object v0, p1, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    const-string v2, "c"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "BackupManagerService"

    const/4 v3, 0x0

    if-eqz v0, :cond_34

    .line 787
    sget-boolean v0, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v0, :cond_33

    .line 788
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dropping cache file path "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    :cond_33
    return v3

    .line 793
    :cond_34
    iget-object v0, p1, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    const-string/jumbo v4, "r"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 798
    iget-object v0, p1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string/jumbo v4, "no_backup/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 799
    sget-boolean v0, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v0, :cond_66

    .line 800
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dropping no_backup file path "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    :cond_66
    return v3

    .line 807
    :cond_67
    return v1
.end method

.method private static isValidParent(Lcom/android/server/backup/FileMetadata;Lcom/android/server/backup/FileMetadata;)Z
    .registers 4
    .param p0, "parentDir"    # Lcom/android/server/backup/FileMetadata;
    .param p1, "childDir"    # Lcom/android/server/backup/FileMetadata;

    .line 693
    if-eqz p0, :cond_26

    iget-object v0, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 694
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p1, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    .line 695
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 696
    invoke-static {v1}, Lcom/android/server/backup/restore/FullRestoreEngine;->getPathWithTrailingSeparator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    .line 693
    :goto_27
    return v0
.end method

.method static synthetic lambda$restoreOneFile$0(J)V
    .registers 2
    .param p0, "bytesRead"    # J

    .line 203
    return-void
.end method

.method private setUpPipes()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 709
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 710
    :try_start_3
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    .line 711
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipesClosed:Z

    .line 712
    monitor-exit v0

    .line 713
    return-void

    .line 712
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method private shouldForceClearAppDataOnFullRestore(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 828
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 829
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mUserId:I

    .line 828
    const-string/jumbo v2, "packages_to_clear_data_before_full_restore"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 832
    .local v0, "packageListString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 833
    const/4 v1, 0x0

    return v1

    .line 836
    :cond_1b
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 837
    .local v1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method private tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V
    .registers 11
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "doRestoreFinished"    # Z

    .line 734
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    if-eqz v0, :cond_89

    .line 736
    invoke-static {}, Lcom/android/server/backup/BackupManagerServiceStub;->getInstance()Lcom/android/server/backup/BackupManagerServiceStub;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    invoke-interface {v0, v1}, Lcom/android/server/backup/BackupManagerServiceStub;->unlinkToDeath(Landroid/app/IBackupAgent;)V

    .line 737
    invoke-static {}, Lcom/android/server/backup/BackupManagerServiceStub;->getInstance()Lcom/android/server/backup/BackupManagerServiceStub;

    move-result-object v0

    iget v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mInputFD:I

    invoke-interface {v0, v1}, Lcom/android/server/backup/BackupManagerServiceStub;->isCanceling(I)Z

    move-result v0

    const-string v1, "BackupManagerService"

    if-eqz v0, :cond_22

    .line 738
    const-string/jumbo v0, "tearDownAgent - isCanceling!"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    const/4 p2, 0x0

    .line 744
    :cond_22
    if-eqz p2, :cond_7a

    .line 745
    :try_start_24
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->generateRandomIntegerToken()I

    move-result v0

    .line 746
    .local v0, "token":I
    iget-object v2, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 747
    invoke-virtual {v2}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getFullBackupAgentTimeoutMillis()J

    move-result-wide v4

    .line 748
    .local v4, "fullBackupAgentTimeoutMillis":J
    new-instance v6, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;

    iget-object v2, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v3, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    invoke-direct {v6, v2, v3, v0}, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/OperationStorage;I)V

    .line 750
    .local v6, "latch":Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;
    iget-object v2, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v7, 0x1

    move v3, v0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/backup/UserBackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V

    .line 752
    iget-object v2, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string/jumbo v3, "system"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 753
    sget-boolean v2, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v2, :cond_57

    .line 754
    const-string/jumbo v2, "system agent - restoreFinished on thread"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    :cond_57
    new-instance v2, Lcom/android/server/backup/restore/AdbRestoreFinishedRunnable;

    iget-object v3, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    iget-object v7, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-direct {v2, v3, v0, v7}, Lcom/android/server/backup/restore/AdbRestoreFinishedRunnable;-><init>(Landroid/app/IBackupAgent;ILcom/android/server/backup/UserBackupManagerService;)V

    .line 758
    .local v2, "runner":Ljava/lang/Runnable;
    new-instance v3, Ljava/lang/Thread;

    const-string/jumbo v7, "restore-sys-finished-runner"

    invoke-direct {v3, v2, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 759
    .end local v2    # "runner":Ljava/lang/Runnable;
    goto :goto_77

    .line 760
    :cond_6c
    iget-object v2, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    iget-object v3, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 761
    invoke-virtual {v3}, Lcom/android/server/backup/UserBackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v3

    .line 760
    invoke-interface {v2, v0, v3}, Landroid/app/IBackupAgent;->doRestoreFinished(ILandroid/app/backup/IBackupManager;)V

    .line 764
    :goto_77
    invoke-virtual {v6}, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;->await()V

    .line 767
    .end local v0    # "token":I
    .end local v4    # "fullBackupAgentTimeoutMillis":J
    .end local v6    # "latch":Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;
    :cond_7a
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/UserBackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V
    :try_end_7f
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_7f} :catch_80

    .line 770
    goto :goto_86

    .line 768
    :catch_80
    move-exception v0

    .line 769
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Lost app trying to shut down"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    .line 773
    :cond_89
    return-void
.end method

.method private tearDownPipes()V
    .registers 5

    .line 719
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 720
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipesClosed:Z

    if-nez v1, :cond_24

    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_26

    if-eqz v1, :cond_24

    .line 722
    const/4 v2, 0x0

    :try_start_c
    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 723
    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 725
    iput-boolean v2, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipesClosed:Z
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_1b} :catch_1c
    .catchall {:try_start_c .. :try_end_1b} :catchall_26

    .line 728
    goto :goto_24

    .line 726
    :catch_1c
    move-exception v1

    .line 727
    .local v1, "e":Ljava/io/IOException;
    :try_start_1d
    const-string v2, "BackupManagerService"

    const-string v3, "Couldn\'t close agent pipes"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 730
    .end local v1    # "e":Ljava/io/IOException;
    :cond_24
    :goto_24
    monitor-exit v0

    .line 731
    return-void

    .line 730
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_1d .. :try_end_28} :catchall_26

    throw v1
.end method


# virtual methods
.method public getAgent()Landroid/app/IBackupAgent;
    .registers 2

    .line 189
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    return-object v0
.end method

.method public getWidgetData()[B
    .registers 2

    .line 193
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mWidgetData:[B

    return-object v0
.end method

.method handleTimeout()V
    .registers 2

    .line 776
    invoke-direct {p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownPipes()V

    .line 777
    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/android/server/backup/restore/FullRestoreEngine;->setResult(I)V

    .line 778
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/backup/restore/FullRestoreEngine;->setRunning(Z)V

    .line 779
    return-void
.end method

.method public restoreOneFile(Ljava/io/InputStream;Z[BLandroid/content/pm/PackageInfo;ZILandroid/app/backup/IBackupManagerMonitor;)Z
    .registers 58
    .param p1, "instream"    # Ljava/io/InputStream;
    .param p2, "mustKillAgent"    # Z
    .param p3, "buffer"    # [B
    .param p4, "onlyPackage"    # Landroid/content/pm/PackageInfo;
    .param p5, "allowApks"    # Z
    .param p6, "token"    # I
    .param p7, "monitor"    # Landroid/app/backup/IBackupManagerMonitor;

    .line 198
    move-object/from16 v1, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->isRunning()Z

    move-result v2

    const/4 v14, 0x0

    const-string v15, "BackupManagerService"

    if-nez v2, :cond_17

    .line 199
    const-string v2, "Restore engine used after halting"

    invoke-static {v15, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    return v14

    .line 203
    :cond_17
    new-instance v2, Lcom/android/server/backup/restore/FullRestoreEngine$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/backup/restore/FullRestoreEngine$$ExternalSyntheticLambda0;-><init>()V

    move-object v10, v2

    .line 205
    .local v10, "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    new-instance v2, Lcom/android/server/backup/utils/TarBackupReader;

    move-object/from16 v9, p7

    invoke-direct {v2, v11, v10, v9}, Lcom/android/server/backup/utils/TarBackupReader;-><init>(Ljava/io/InputStream;Lcom/android/server/backup/utils/BytesReadListener;Landroid/app/backup/IBackupManagerMonitor;)V

    move-object v7, v2

    .line 210
    .local v7, "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    const/4 v6, -0x3

    const/16 v24, 0x1

    :try_start_28
    sget-boolean v2, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2a} :catch_85e

    if-eqz v2, :cond_42

    .line 211
    :try_start_2c
    const-string v2, "Reading tar header for restoring file"

    invoke-static {v15, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_31} :catch_32

    goto :goto_42

    .line 636
    :catch_32
    move-exception v0

    move-object v4, v0

    move-object v3, v9

    move-object/from16 v38, v10

    move-object v8, v12

    move-object v2, v15

    move/from16 v9, p6

    move-object/from16 v49, v11

    move-object v11, v7

    move-object/from16 v7, v49

    goto/16 :goto_86d

    .line 213
    :cond_42
    :goto_42
    :try_start_42
    invoke-virtual {v7}, Lcom/android/server/backup/utils/TarBackupReader;->readTarHeaders()Lcom/android/server/backup/FileMetadata;

    move-result-object v2

    move-object v5, v2

    .line 214
    .local v5, "info":Lcom/android/server/backup/FileMetadata;
    if-eqz v5, :cond_84e

    .line 215
    sget-boolean v2, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_4b} :catch_85e

    if-eqz v2, :cond_50

    .line 216
    :try_start_4d
    invoke-virtual {v5}, Lcom/android/server/backup/FileMetadata;->dump()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_32

    .line 220
    :cond_50
    :try_start_50
    iget v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mInputFD:I

    iput v2, v5, Lcom/android/server/backup/FileMetadata;->rawFd:I

    .line 221
    iget-object v2, v5, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object v4, v2

    .line 222
    .local v4, "pkg":Ljava/lang/String;
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentPackage:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_5d} :catch_85e

    const/4 v3, 0x0

    if-nez v2, :cond_b7

    .line 225
    if-eqz v13, :cond_91

    .line 226
    :try_start_62
    iget-object v2, v13, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_91

    .line 227
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected data for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but saw "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-virtual {v1, v6}, Lcom/android/server/backup/restore/FullRestoreEngine;->setResult(I)V

    .line 229
    invoke-virtual {v1, v14}, Lcom/android/server/backup/restore/FullRestoreEngine;->setRunning(Z)V

    .line 230
    return v14

    .line 236
    :cond_91
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a0

    .line 237
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v8, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v2, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    :cond_a0
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    if-eqz v2, :cond_b7

    .line 244
    const-string v2, "Saw new package; finalizing old one"

    invoke-static {v15, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownPipes()V

    .line 248
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-boolean v8, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mIsAdbRestore:Z

    invoke-direct {v1, v2, v8}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V

    .line 249
    iput-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    .line 250
    iput-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentPackage:Ljava/lang/String;
    :try_end_b7
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_b7} :catch_32

    .line 254
    :cond_b7
    :try_start_b7
    iget-object v2, v5, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string v8, "_manifest"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_bf
    .catch Ljava/io/IOException; {:try_start_b7 .. :try_end_bf} :catch_85e

    if-eqz v2, :cond_1cc

    .line 255
    :try_start_c1
    invoke-virtual {v7, v5}, Lcom/android/server/backup/utils/TarBackupReader;->readAppManifestAndReturnSignatures(Lcom/android/server/backup/FileMetadata;)[Landroid/content/pm/Signature;

    move-result-object v2
    :try_end_c5
    .catch Ljava/io/IOException; {:try_start_c1 .. :try_end_c5} :catch_32

    .line 259
    .local v2, "signatures":[Landroid/content/pm/Signature;
    move-object/from16 v38, v15

    :try_start_c7
    iget-wide v14, v5, Lcom/android/server/backup/FileMetadata;->version:J

    iput-wide v14, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAppVersion:J

    .line 260
    const-class v3, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v21, v3

    check-cast v21, Landroid/content/pm/PackageManagerInternal;

    .line 262
    .local v21, "pmi":Landroid/content/pm/PackageManagerInternal;
    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 263
    invoke-virtual {v3}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    iget v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mUserId:I

    iget-object v14, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 262
    move-object/from16 v16, v7

    move/from16 v18, p5

    move-object/from16 v19, v5

    move-object/from16 v20, v2

    move/from16 v22, v3

    move-object/from16 v23, v14

    invoke-virtual/range {v16 .. v23}, Lcom/android/server/backup/utils/TarBackupReader;->chooseRestorePolicy(Landroid/content/pm/PackageManager;ZLcom/android/server/backup/FileMetadata;[Landroid/content/pm/Signature;Landroid/content/pm/PackageManagerInternal;ILcom/android/server/backup/utils/BackupEligibilityRules;)Lcom/android/server/backup/restore/RestorePolicy;

    move-result-object v3

    .line 265
    .local v3, "restorePolicy":Lcom/android/server/backup/restore/RestorePolicy;
    iget-object v14, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mManifestSignatures:Ljava/util/HashMap;

    iget-object v15, v5, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    iget-object v14, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    invoke-virtual {v14, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    iget-object v14, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackageInstallers:Ljava/util/HashMap;

    iget-object v15, v5, Lcom/android/server/backup/FileMetadata;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v14, v4, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    iget-wide v14, v5, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v7, v14, v15}, Lcom/android/server/backup/utils/TarBackupReader;->skipTarPadding(J)V

    .line 272
    iget-object v14, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-static {v14, v4}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendOnRestorePackage(Landroid/app/backup/IFullBackupRestoreObserver;Ljava/lang/String;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v14

    iput-object v14, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 274
    invoke-static {}, Lcom/android/server/backup/BackupManagerServiceStub;->getInstance()Lcom/android/server/backup/BackupManagerServiceStub;

    move-result-object v14

    iget v15, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mInputFD:I

    iget v6, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mUserId:I

    invoke-interface {v14, v15, v6}, Lcom/android/server/backup/BackupManagerServiceStub;->getAppUserId(II)I

    move-result v6

    .line 275
    .local v6, "appUserId":I
    invoke-static {}, Lcom/android/server/backup/BackupManagerServiceStub;->getInstance()Lcom/android/server/backup/BackupManagerServiceStub;

    move-result-object v14

    invoke-interface {v14, v6}, Lcom/android/server/backup/BackupManagerServiceStub;->isXSpaceUser(I)Z

    move-result v14

    if-eqz v14, :cond_1a7

    sget-object v14, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT_IF_APK:Lcom/android/server/backup/restore/RestorePolicy;

    if-ne v3, v14, :cond_1a7

    .line 277
    invoke-static {}, Lcom/android/server/backup/BackupManagerServiceStub;->getInstance()Lcom/android/server/backup/BackupManagerServiceStub;

    move-result-object v14

    invoke-interface {v14}, Lcom/android/server/backup/BackupManagerServiceStub;->isXSpaceUserRunning()Z

    move-result v14

    .line 278
    .local v14, "xSpaceUserRunning":Z
    const/4 v15, 0x0

    .line 279
    .local v15, "isSuccessfullyInstalled":Z
    if-eqz v14, :cond_13d

    .line 280
    invoke-static {}, Lcom/android/server/backup/BackupManagerServiceStub;->getInstance()Lcom/android/server/backup/BackupManagerServiceStub;

    move-result-object v8

    invoke-interface {v8, v4, v6}, Lcom/android/server/backup/BackupManagerServiceStub;->installExistingPackageAsUser(Ljava/lang/String;I)Z

    move-result v8

    move v15, v8

    .line 282
    :cond_13d
    iget-object v8, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    if-eqz v15, :cond_148

    .line 283
    sget-object v18, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT:Lcom/android/server/backup/restore/RestorePolicy;

    move-object/from16 v19, v2

    move-object/from16 v2, v18

    goto :goto_14e

    .line 284
    :cond_148
    sget-object v18, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    move-object/from16 v19, v2

    move-object/from16 v2, v18

    .line 282
    .end local v2    # "signatures":[Landroid/content/pm/Signature;
    .local v19, "signatures":[Landroid/content/pm/Signature;
    :goto_14e
    invoke-virtual {v8, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    if-eqz v15, :cond_15f

    .line 286
    invoke-static {}, Lcom/android/server/backup/BackupManagerServiceStub;->getInstance()Lcom/android/server/backup/BackupManagerServiceStub;

    move-result-object v2

    iget v8, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mInputFD:I

    invoke-interface {v2, v8}, Lcom/android/server/backup/BackupManagerServiceStub;->onApkInstalled(I)V

    move-object/from16 v18, v3

    goto :goto_16c

    .line 288
    :cond_15f
    invoke-static {}, Lcom/android/server/backup/BackupManagerServiceStub;->getInstance()Lcom/android/server/backup/BackupManagerServiceStub;

    move-result-object v2

    iget v8, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mInputFD:I

    move-object/from16 v18, v3

    const/16 v3, 0xb

    .end local v3    # "restorePolicy":Lcom/android/server/backup/restore/RestorePolicy;
    .local v18, "restorePolicy":Lcom/android/server/backup/restore/RestorePolicy;
    invoke-interface {v2, v3, v8}, Lcom/android/server/backup/BackupManagerServiceStub;->errorOccur(II)V

    .line 293
    :goto_16c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "installing, pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " appUserId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " xSpaceUserRunning="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isSuccessfullyInstalled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_19e
    .catch Ljava/io/IOException; {:try_start_c7 .. :try_end_19e} :catch_1bb

    move-object/from16 v8, v38

    :try_start_1a0
    invoke-static {v8, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-virtual {v5}, Lcom/android/server/backup/FileMetadata;->dump()V
    :try_end_1a6
    .catch Ljava/io/IOException; {:try_start_1a0 .. :try_end_1a6} :catch_20b

    goto :goto_1ad

    .line 275
    .end local v14    # "xSpaceUserRunning":Z
    .end local v15    # "isSuccessfullyInstalled":Z
    .end local v18    # "restorePolicy":Lcom/android/server/backup/restore/RestorePolicy;
    .end local v19    # "signatures":[Landroid/content/pm/Signature;
    .restart local v2    # "signatures":[Landroid/content/pm/Signature;
    .restart local v3    # "restorePolicy":Lcom/android/server/backup/restore/RestorePolicy;
    :cond_1a7
    move-object/from16 v19, v2

    move-object/from16 v18, v3

    move-object/from16 v8, v38

    .line 300
    .end local v2    # "signatures":[Landroid/content/pm/Signature;
    .end local v3    # "restorePolicy":Lcom/android/server/backup/restore/RestorePolicy;
    .end local v6    # "appUserId":I
    .end local v21    # "pmi":Landroid/content/pm/PackageManagerInternal;
    :goto_1ad
    move/from16 v9, p6

    move-object v3, v5

    move-object v2, v8

    move-object/from16 v38, v10

    move-object v8, v12

    move-object/from16 v49, v11

    move-object v11, v7

    move-object/from16 v7, v49

    goto/16 :goto_85a

    .line 636
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v5    # "info":Lcom/android/server/backup/FileMetadata;
    :catch_1bb
    move-exception v0

    move-object v4, v0

    move-object v3, v9

    move-object v8, v12

    move-object/from16 v2, v38

    move/from16 v9, p6

    move-object/from16 v38, v10

    move-object/from16 v49, v11

    move-object v11, v7

    move-object/from16 v7, v49

    goto/16 :goto_86d

    .line 300
    .restart local v4    # "pkg":Ljava/lang/String;
    .restart local v5    # "info":Lcom/android/server/backup/FileMetadata;
    :cond_1cc
    move-object v2, v3

    move-object v8, v15

    const/16 v3, 0xb

    :try_start_1d0
    iget-object v6, v5, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string v14, "_meta"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_1d8
    .catch Ljava/io/IOException; {:try_start_1d0 .. :try_end_1d8} :catch_846

    if-eqz v6, :cond_21b

    .line 302
    :try_start_1da
    invoke-virtual {v7, v5}, Lcom/android/server/backup/utils/TarBackupReader;->readMetadata(Lcom/android/server/backup/FileMetadata;)V

    .line 308
    invoke-virtual {v7}, Lcom/android/server/backup/utils/TarBackupReader;->getWidgetData()[B

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mWidgetData:[B

    .line 310
    invoke-virtual {v7}, Lcom/android/server/backup/utils/TarBackupReader;->getMonitor()Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v2
    :try_end_1e7
    .catch Ljava/io/IOException; {:try_start_1da .. :try_end_1e7} :catch_20b

    .line 312
    .end local p7    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .local v2, "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :try_start_1e7
    iget-wide v14, v5, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v7, v14, v15}, Lcom/android/server/backup/utils/TarBackupReader;->skipTarPadding(J)V
    :try_end_1ec
    .catch Ljava/io/IOException; {:try_start_1e7 .. :try_end_1ec} :catch_1fb

    move/from16 v9, p6

    move-object v4, v2

    move-object v3, v5

    move-object v2, v8

    move-object/from16 v38, v10

    move-object v8, v12

    move-object/from16 v49, v11

    move-object v11, v7

    move-object/from16 v7, v49

    goto/16 :goto_85c

    .line 636
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v5    # "info":Lcom/android/server/backup/FileMetadata;
    :catch_1fb
    move-exception v0

    move/from16 v9, p6

    move-object v4, v0

    move-object v3, v2

    move-object v2, v8

    move-object/from16 v38, v10

    move-object v8, v12

    move-object/from16 v49, v11

    move-object v11, v7

    move-object/from16 v7, v49

    goto/16 :goto_86d

    .end local v2    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .restart local p7    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :catch_20b
    move-exception v0

    move-object v4, v0

    move-object v2, v8

    move-object v3, v9

    move-object/from16 v38, v10

    move-object v8, v12

    move/from16 v9, p6

    move-object/from16 v49, v11

    move-object v11, v7

    move-object/from16 v7, v49

    goto/16 :goto_86d

    .line 316
    .restart local v4    # "pkg":Ljava/lang/String;
    .restart local v5    # "info":Lcom/android/server/backup/FileMetadata;
    :cond_21b
    const/4 v14, 0x1

    .line 317
    .local v14, "okay":Z
    :try_start_21c
    iget-object v6, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/backup/restore/RestorePolicy;

    move-object v15, v6

    .line 319
    .local v15, "policy":Lcom/android/server/backup/restore/RestorePolicy;
    invoke-static {}, Lcom/android/server/backup/BackupManagerServiceStub;->getInstance()Lcom/android/server/backup/BackupManagerServiceStub;

    move-result-object v6

    iget-wide v2, v5, Lcom/android/server/backup/FileMetadata;->size:J
    :try_end_22b
    .catch Ljava/io/IOException; {:try_start_21c .. :try_end_22b} :catch_846

    move-object/from16 v18, v7

    .end local v7    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .local v18, "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :try_start_22d
    iget v7, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mInputFD:I

    invoke-interface {v6, v2, v3, v7}, Lcom/android/server/backup/BackupManagerServiceStub;->addRestoredSize(JI)V

    .line 320
    sget-object v2, Lcom/android/server/backup/restore/FullRestoreEngine$1;->$SwitchMap$com$android$server$backup$restore$RestorePolicy:[I

    invoke-virtual {v15}, Lcom/android/server/backup/restore/RestorePolicy;->ordinal()I

    move-result v3

    aget v2, v2, v3
    :try_end_23a
    .catch Ljava/io/IOException; {:try_start_22d .. :try_end_23a} :catch_838

    const-string v3, "a"

    packed-switch v2, :pswitch_data_8e0

    .line 381
    move-object v3, v5

    move-object v13, v8

    move-object/from16 v38, v10

    move/from16 v19, v14

    move-object/from16 v39, v15

    move-object/from16 v11, v18

    move-object v15, v4

    .end local v4    # "pkg":Ljava/lang/String;
    .end local v5    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v10    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v14    # "okay":Z
    .end local v18    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .local v3, "info":Lcom/android/server/backup/FileMetadata;
    .local v11, "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .local v15, "pkg":Ljava/lang/String;
    .local v19, "okay":Z
    .local v38, "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .local v39, "policy":Lcom/android/server/backup/restore/RestorePolicy;
    goto/16 :goto_342

    .line 365
    .end local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v11    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v19    # "okay":Z
    .end local v38    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v39    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v4    # "pkg":Ljava/lang/String;
    .restart local v5    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v10    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v14    # "okay":Z
    .local v15, "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v18    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :pswitch_24c
    :try_start_24c
    iget-object v2, v5, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_265

    .line 367
    const-string v2, "apk present but ACCEPT"

    invoke-static {v8, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_259
    .catch Ljava/io/IOException; {:try_start_24c .. :try_end_259} :catch_270

    .line 373
    const/4 v14, 0x0

    move-object v3, v5

    move-object v13, v8

    move-object/from16 v38, v10

    move-object/from16 v39, v15

    move-object/from16 v11, v18

    move-object v15, v4

    goto/16 :goto_34f

    .line 365
    :cond_265
    move-object v3, v5

    move-object v13, v8

    move-object/from16 v38, v10

    move-object/from16 v39, v15

    move-object/from16 v11, v18

    move-object v15, v4

    goto/16 :goto_34f

    .line 636
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v5    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v14    # "okay":Z
    .end local v15    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    :catch_270
    move-exception v0

    move-object v4, v0

    move-object v2, v8

    move-object v3, v9

    move-object/from16 v38, v10

    move-object v7, v11

    move-object v8, v12

    move-object/from16 v11, v18

    move/from16 v9, p6

    goto/16 :goto_86d

    .line 328
    .restart local v4    # "pkg":Ljava/lang/String;
    .restart local v5    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v14    # "okay":Z
    .restart local v15    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    :pswitch_27e
    :try_start_27e
    iget-object v2, v5, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_310

    .line 330
    const-string v2, "APK file; installing"

    invoke-static {v8, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackageInstallers:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_293
    .catch Ljava/io/IOException; {:try_start_27e .. :try_end_293} :catch_324

    move-object v6, v8

    const/16 v7, 0xb

    move-object v8, v2

    .line 334
    .local v8, "installerPackageName":Ljava/lang/String;
    :try_start_297
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 335
    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mDeleteObserver:Lcom/android/server/backup/restore/RestoreDeleteObserver;

    iget-object v7, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mManifestSignatures:Ljava/util/HashMap;
    :try_end_2a1
    .catch Ljava/io/IOException; {:try_start_297 .. :try_end_2a1} :catch_2ff

    move-object/from16 v38, v6

    :try_start_2a3
    iget-object v6, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    move/from16 v19, v14

    .end local v14    # "okay":Z
    .restart local v19    # "okay":Z
    iget v14, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mUserId:I
    :try_end_2a9
    .catch Ljava/io/IOException; {:try_start_2a3 .. :try_end_2a9} :catch_2ef

    .line 334
    move-object/from16 v20, v2

    move-object/from16 v2, p1

    move-object/from16 v39, v15

    move-object v15, v4

    .end local v4    # "pkg":Ljava/lang/String;
    .local v15, "pkg":Ljava/lang/String;
    .restart local v39    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    move-object/from16 v4, v20

    move-object/from16 v40, v5

    .end local v5    # "info":Lcom/android/server/backup/FileMetadata;
    .local v40, "info":Lcom/android/server/backup/FileMetadata;
    move-object v5, v7

    move-object/from16 v13, v38

    const/4 v7, -0x3

    move-object/from16 v11, v18

    const/16 v12, 0xb

    .end local v18    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v11    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    move-object/from16 v7, v40

    move-object v9, v10

    move-object/from16 v38, v10

    .end local v10    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v38    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    move v10, v14

    :try_start_2c2
    invoke-static/range {v2 .. v10}, Lcom/android/server/backup/utils/RestoreUtils;->installApk(Ljava/io/InputStream;Landroid/content/Context;Lcom/android/server/backup/restore/RestoreDeleteObserver;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/android/server/backup/FileMetadata;Ljava/lang/String;Lcom/android/server/backup/utils/BytesReadListener;I)Z

    move-result v2

    .line 340
    .local v2, "isSuccessfullyInstalled":Z
    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    if-eqz v2, :cond_2cd

    .line 341
    sget-object v4, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT:Lcom/android/server/backup/restore/RestorePolicy;

    goto :goto_2cf

    .line 342
    :cond_2cd
    sget-object v4, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    .line 340
    :goto_2cf
    invoke-virtual {v3, v15, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    move-object/from16 v3, v40

    .end local v40    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v3    # "info":Lcom/android/server/backup/FileMetadata;
    iget-wide v4, v3, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v11, v4, v5}, Lcom/android/server/backup/utils/TarBackupReader;->skipTarPadding(J)V

    .line 348
    if-eqz v2, :cond_2e5

    .line 349
    invoke-static {}, Lcom/android/server/backup/BackupManagerServiceStub;->getInstance()Lcom/android/server/backup/BackupManagerServiceStub;

    move-result-object v4

    iget v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mInputFD:I

    invoke-interface {v4, v5}, Lcom/android/server/backup/BackupManagerServiceStub;->onApkInstalled(I)V

    goto :goto_2ee

    .line 351
    :cond_2e5
    invoke-static {}, Lcom/android/server/backup/BackupManagerServiceStub;->getInstance()Lcom/android/server/backup/BackupManagerServiceStub;

    move-result-object v4

    iget v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mInputFD:I

    invoke-interface {v4, v12, v5}, Lcom/android/server/backup/BackupManagerServiceStub;->errorOccur(II)V

    .line 355
    :goto_2ee
    return v24

    .line 636
    .end local v2    # "isSuccessfullyInstalled":Z
    .end local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v8    # "installerPackageName":Ljava/lang/String;
    .end local v11    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v15    # "pkg":Ljava/lang/String;
    .end local v19    # "okay":Z
    .end local v38    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v39    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v10    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v18    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_2ef
    move-exception v0

    move-object/from16 v13, v38

    move-object/from16 v38, v10

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    move/from16 v9, p6

    move-object/from16 v3, p7

    move-object v4, v0

    move-object v2, v13

    goto :goto_30c

    :catch_2ff
    move-exception v0

    move-object/from16 v38, v10

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    move/from16 v9, p6

    move-object/from16 v3, p7

    move-object v4, v0

    move-object v2, v6

    :goto_30c
    move-object/from16 v11, v18

    goto/16 :goto_845

    .line 359
    .restart local v4    # "pkg":Ljava/lang/String;
    .restart local v5    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v14    # "okay":Z
    .local v15, "policy":Lcom/android/server/backup/restore/RestorePolicy;
    :cond_310
    move-object v3, v5

    move-object v13, v8

    move-object/from16 v38, v10

    move/from16 v19, v14

    move-object/from16 v39, v15

    move-object/from16 v11, v18

    move-object v15, v4

    .end local v4    # "pkg":Ljava/lang/String;
    .end local v5    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v10    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v14    # "okay":Z
    .end local v18    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v11    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .local v15, "pkg":Ljava/lang/String;
    .restart local v19    # "okay":Z
    .restart local v38    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v39    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v4, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v2, v15, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_322
    .catch Ljava/io/IOException; {:try_start_2c2 .. :try_end_322} :catch_35e

    .line 360
    const/4 v14, 0x0

    .line 362
    .end local v19    # "okay":Z
    .restart local v14    # "okay":Z
    goto :goto_34f

    .line 636
    .end local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v11    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v14    # "okay":Z
    .end local v15    # "pkg":Ljava/lang/String;
    .end local v38    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v39    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v10    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v18    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_324
    move-exception v0

    move-object/from16 v38, v10

    move-object/from16 v7, p1

    move/from16 v9, p6

    move-object/from16 v3, p7

    move-object v4, v0

    move-object v2, v8

    move-object/from16 v11, v18

    move-object/from16 v8, p3

    goto/16 :goto_845

    .line 322
    .restart local v4    # "pkg":Ljava/lang/String;
    .restart local v5    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v14    # "okay":Z
    .local v15, "policy":Lcom/android/server/backup/restore/RestorePolicy;
    :pswitch_335
    move-object v3, v5

    move-object v13, v8

    move-object/from16 v38, v10

    move/from16 v19, v14

    move-object/from16 v39, v15

    move-object/from16 v11, v18

    move-object v15, v4

    .end local v4    # "pkg":Ljava/lang/String;
    .end local v5    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v10    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v14    # "okay":Z
    .end local v18    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v11    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .local v15, "pkg":Ljava/lang/String;
    .restart local v19    # "okay":Z
    .restart local v38    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v39    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    const/4 v14, 0x0

    .line 323
    .end local v19    # "okay":Z
    .restart local v14    # "okay":Z
    goto :goto_34f

    .line 381
    .end local v14    # "okay":Z
    .restart local v19    # "okay":Z
    :goto_342
    :try_start_342
    const-string v2, "Invalid policy from manifest"

    invoke-static {v13, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const/4 v14, 0x0

    .line 383
    .end local v19    # "okay":Z
    .restart local v14    # "okay":Z
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v4, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v2, v15, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    :goto_34f
    invoke-direct {v1, v3}, Lcom/android/server/backup/restore/FullRestoreEngine;->isRestorableFile(Lcom/android/server/backup/FileMetadata;)Z

    move-result v2
    :try_end_353
    .catch Ljava/io/IOException; {:try_start_342 .. :try_end_353} :catch_82c

    if-eqz v2, :cond_36b

    :try_start_355
    iget-object v2, v3, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/backup/restore/FullRestoreEngine;->isCanonicalFilePath(Ljava/lang/String;)Z

    move-result v2
    :try_end_35b
    .catch Ljava/io/IOException; {:try_start_355 .. :try_end_35b} :catch_35e

    if-nez v2, :cond_36c

    goto :goto_36b

    .line 636
    .end local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v14    # "okay":Z
    .end local v15    # "pkg":Ljava/lang/String;
    .end local v39    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    :catch_35e
    move-exception v0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    :goto_363
    move/from16 v9, p6

    :goto_365
    move-object/from16 v3, p7

    move-object v4, v0

    move-object v2, v13

    goto/16 :goto_86d

    .line 389
    .restart local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v14    # "okay":Z
    .restart local v15    # "pkg":Ljava/lang/String;
    .restart local v39    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    :cond_36b
    :goto_36b
    const/4 v14, 0x0

    .line 394
    :cond_36c
    :try_start_36c
    sget-boolean v2, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z
    :try_end_36e
    .catch Ljava/io/IOException; {:try_start_36c .. :try_end_36e} :catch_82c

    if-eqz v2, :cond_37b

    if-eqz v14, :cond_37b

    :try_start_372
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    if-eqz v2, :cond_37b

    .line 395
    const-string v2, "Reusing existing agent instance"

    invoke-static {v13, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37b
    .catch Ljava/io/IOException; {:try_start_372 .. :try_end_37b} :catch_35e

    .line 397
    :cond_37b
    const-string/jumbo v2, "k"

    if-eqz v14, :cond_471

    :try_start_380
    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    if-nez v4, :cond_471

    .line 398
    sget-boolean v4, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v4, :cond_39e

    .line 399
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Need to launch agent for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39e
    .catch Ljava/io/IOException; {:try_start_380 .. :try_end_39e} :catch_35e

    .line 407
    :cond_39e
    :try_start_39e
    invoke-static {}, Lcom/android/server/backup/BackupManagerServiceStub;->getInstance()Lcom/android/server/backup/BackupManagerServiceStub;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 408
    invoke-virtual {v5}, Lcom/android/server/backup/UserBackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    iget v6, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mInputFD:I

    iget v7, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mUserId:I

    .line 407
    invoke-interface {v4, v5, v15, v6, v7}, Lcom/android/server/backup/BackupManagerServiceStub;->getApplicationInfo(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    .line 413
    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mClearedPackages:Ljava/util/HashSet;

    invoke-virtual {v4, v15}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_401

    .line 420
    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v1, v4}, Lcom/android/server/backup/restore/FullRestoreEngine;->shouldForceClearAppDataOnFullRestore(Ljava/lang/String;)Z

    move-result v4

    .line 422
    .local v4, "forceClear":Z
    iget-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-eqz v5, :cond_3f0

    if-eqz v4, :cond_3cb

    goto :goto_3f0

    .line 429
    :cond_3cb
    sget-boolean v5, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v5, :cond_3fa

    .line 430
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "backup agent ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") => no clear"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3fa

    .line 424
    :cond_3f0
    :goto_3f0
    const-string v5, "Clearing app data preparatory to full restore"

    invoke-static {v13, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v5, v15}, Lcom/android/server/backup/UserBackupManagerService;->clearApplicationDataBeforeRestore(Ljava/lang/String;)V

    .line 434
    :cond_3fa
    :goto_3fa
    iget-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mClearedPackages:Ljava/util/HashSet;

    invoke-virtual {v5, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 435
    nop

    .end local v4    # "forceClear":Z
    goto :goto_40a

    .line 436
    :cond_401
    sget-boolean v4, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v4, :cond_40a

    .line 437
    const-string v4, "We\'ve initialized this app already; no clear required"

    invoke-static {v13, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :cond_40a
    :goto_40a
    invoke-static {}, Lcom/android/server/backup/BackupManagerServiceStub;->getInstance()Lcom/android/server/backup/BackupManagerServiceStub;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/backup/BackupManagerServiceStub;->waitingBeforeGetAgent()V

    .line 444
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->setUpPipes()V

    .line 445
    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    .line 446
    iget-object v6, v3, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_422

    .line 447
    const/4 v6, 0x0

    goto :goto_423

    .line 448
    :cond_422
    const/4 v6, 0x3

    :goto_423
    iget-object v7, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 449
    invoke-virtual {v7}, Lcom/android/server/backup/utils/BackupEligibilityRules;->getOperationType()I

    move-result v7

    .line 445
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/backup/UserBackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;II)Landroid/app/IBackupAgent;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    .line 451
    invoke-static {}, Lcom/android/server/backup/BackupManagerServiceStub;->getInstance()Lcom/android/server/backup/BackupManagerServiceStub;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    iget v6, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mInputFD:I

    iget-object v7, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v7, v7, v24

    invoke-interface {v4, v5, v6, v7}, Lcom/android/server/backup/BackupManagerServiceStub;->linkToDeath(Landroid/app/IBackupAgent;ILandroid/os/ParcelFileDescriptor;)V

    .line 453
    iput-object v15, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentPackage:Ljava/lang/String;
    :try_end_440
    .catch Ljava/io/IOException; {:try_start_39e .. :try_end_440} :catch_441
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_39e .. :try_end_440} :catch_441

    .line 456
    goto :goto_442

    .line 454
    :catch_441
    move-exception v0

    .line 458
    :goto_442
    :try_start_442
    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    if-nez v4, :cond_471

    .line 460
    invoke-static {}, Lcom/android/server/backup/BackupManagerServiceStub;->getInstance()Lcom/android/server/backup/BackupManagerServiceStub;

    move-result-object v4

    const/4 v5, 0x2

    iget v6, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mInputFD:I

    invoke-interface {v4, v5, v6}, Lcom/android/server/backup/BackupManagerServiceStub;->errorOccur(II)V

    .line 462
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to create agent for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    const/4 v14, 0x0

    .line 464
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownPipes()V

    .line 465
    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v5, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v4, v15, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    :cond_471
    if-eqz v14, :cond_49e

    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentPackage:Ljava/lang/String;

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_49e

    .line 472
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Restoring data for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " but agent is for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentPackage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49d
    .catch Ljava/io/IOException; {:try_start_442 .. :try_end_49d} :catch_35e

    .line 474
    const/4 v14, 0x0

    .line 477
    :cond_49e
    :try_start_49e
    invoke-virtual {v1, v3}, Lcom/android/server/backup/restore/FullRestoreEngine;->shouldSkipReadOnlyDir(Lcom/android/server/backup/FileMetadata;)Z

    move-result v4
    :try_end_4a2
    .catch Ljava/io/IOException; {:try_start_49e .. :try_end_4a2} :catch_82c

    if-eqz v4, :cond_4a5

    .line 479
    const/4 v14, 0x0

    .line 486
    :cond_4a5
    if-eqz v14, :cond_7e8

    .line 487
    const/4 v6, 0x1

    .line 488
    .local v6, "agentSuccess":Z
    :try_start_4a8
    iget-wide v7, v3, Lcom/android/server/backup/FileMetadata;->size:J

    .line 489
    .local v7, "toCopy":J
    const-string v9, "com.android.sharedstoragebackup"

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_4b0
    .catch Ljava/io/IOException; {:try_start_4a8 .. :try_end_4b0} :catch_7df

    .line 490
    .local v9, "isSharedStorage":Z
    if-eqz v9, :cond_4bb

    .line 491
    :try_start_4b2
    iget-object v10, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    invoke-virtual {v10}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getSharedBackupAgentTimeoutMillis()J

    move-result-wide v16
    :try_end_4b8
    .catch Ljava/io/IOException; {:try_start_4b2 .. :try_end_4b8} :catch_35e

    move-wide/from16 v43, v16

    goto :goto_4c7

    .line 492
    :cond_4bb
    :try_start_4bb
    iget-object v10, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    iget-object v12, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v10, v12}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getRestoreAgentTimeoutMillis(I)J

    move-result-wide v16
    :try_end_4c5
    .catch Ljava/io/IOException; {:try_start_4bb .. :try_end_4c5} :catch_7df

    move-wide/from16 v43, v16

    :goto_4c7
    nop

    .line 495
    .local v43, "timeout":J
    :try_start_4c8
    iget-object v10, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v12, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mMonitorTask:Lcom/android/server/backup/BackupRestoreTask;

    const/16 v46, 0x1

    move-object/from16 v41, v10

    move/from16 v42, p6

    move-object/from16 v45, v12

    invoke-virtual/range {v41 .. v46}, Lcom/android/server/backup/UserBackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V

    .line 500
    const-string/jumbo v10, "obb"

    iget-object v12, v3, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_4e0
    .catch Ljava/io/IOException; {:try_start_4c8 .. :try_end_4e0} :catch_6a1
    .catch Landroid/os/RemoteException; {:try_start_4c8 .. :try_end_4e0} :catch_67d

    const-string v12, " : "

    if-eqz v10, :cond_57a

    .line 502
    :try_start_4e4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Restoring OBB file for "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v10, v3, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    iget-object v10, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v12, 0x0

    aget-object v27, v10, v12

    iget-wide v4, v3, Lcom/android/server/backup/FileMetadata;->size:J

    iget v10, v3, Lcom/android/server/backup/FileMetadata;->type:I

    iget-object v12, v3, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;
    :try_end_511
    .catch Ljava/io/IOException; {:try_start_4e4 .. :try_end_511} :catch_56c
    .catch Landroid/os/RemoteException; {:try_start_4e4 .. :try_end_511} :catch_55e

    move/from16 v40, v6

    move-wide/from16 v45, v7

    .end local v6    # "agentSuccess":Z
    .end local v7    # "toCopy":J
    .local v40, "agentSuccess":Z
    .local v45, "toCopy":J
    :try_start_515
    iget-wide v6, v3, Lcom/android/server/backup/FileMetadata;->mode:J
    :try_end_517
    .catch Ljava/io/IOException; {:try_start_515 .. :try_end_517} :catch_554
    .catch Landroid/os/RemoteException; {:try_start_515 .. :try_end_517} :catch_54a

    move/from16 v47, v9

    .end local v9    # "isSharedStorage":Z
    .local v47, "isSharedStorage":Z
    :try_start_519
    iget-wide v8, v3, Lcom/android/server/backup/FileMetadata;->mtime:J
    :try_end_51b
    .catch Ljava/io/IOException; {:try_start_519 .. :try_end_51b} :catch_542
    .catch Landroid/os/RemoteException; {:try_start_519 .. :try_end_51b} :catch_53a

    move-object/from16 v48, v11

    .end local v11    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .local v48, "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :try_start_51d
    iget-object v11, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 508
    invoke-virtual {v11}, Lcom/android/server/backup/UserBackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v37

    .line 505
    move-object/from16 v25, v2

    move-object/from16 v26, v15

    move-wide/from16 v28, v4

    move/from16 v30, v10

    move-object/from16 v31, v12

    move-wide/from16 v32, v6

    move-wide/from16 v34, v8

    move/from16 v36, p6

    invoke-virtual/range {v25 .. v37}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->restoreObbFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;JILjava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    :try_end_536
    .catch Ljava/io/IOException; {:try_start_51d .. :try_end_536} :catch_5df
    .catch Landroid/os/RemoteException; {:try_start_51d .. :try_end_536} :catch_5d9

    move/from16 v16, v14

    goto/16 :goto_668

    .line 548
    .end local v48    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v11    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_53a
    move-exception v0

    move-object/from16 v48, v11

    move-object v2, v0

    move/from16 v16, v14

    .end local v11    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v48    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    goto/16 :goto_689

    .line 543
    .end local v48    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v11    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_542
    move-exception v0

    move-object/from16 v48, v11

    move-object v2, v0

    move/from16 v16, v14

    .end local v11    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v48    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    goto/16 :goto_6ad

    .line 548
    .end local v47    # "isSharedStorage":Z
    .end local v48    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v9    # "isSharedStorage":Z
    .restart local v11    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_54a
    move-exception v0

    move/from16 v47, v9

    move-object/from16 v48, v11

    move-object v2, v0

    move/from16 v16, v14

    .end local v9    # "isSharedStorage":Z
    .end local v11    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v47    # "isSharedStorage":Z
    .restart local v48    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    goto/16 :goto_689

    .line 543
    .end local v47    # "isSharedStorage":Z
    .end local v48    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v9    # "isSharedStorage":Z
    .restart local v11    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_554
    move-exception v0

    move/from16 v47, v9

    move-object/from16 v48, v11

    move-object v2, v0

    move/from16 v16, v14

    .end local v9    # "isSharedStorage":Z
    .end local v11    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v47    # "isSharedStorage":Z
    .restart local v48    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    goto/16 :goto_6ad

    .line 548
    .end local v40    # "agentSuccess":Z
    .end local v45    # "toCopy":J
    .end local v47    # "isSharedStorage":Z
    .end local v48    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v6    # "agentSuccess":Z
    .restart local v7    # "toCopy":J
    .restart local v9    # "isSharedStorage":Z
    .restart local v11    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_55e
    move-exception v0

    move/from16 v40, v6

    move-wide/from16 v45, v7

    move/from16 v47, v9

    move-object/from16 v48, v11

    move-object v2, v0

    move/from16 v16, v14

    .end local v6    # "agentSuccess":Z
    .end local v7    # "toCopy":J
    .end local v9    # "isSharedStorage":Z
    .end local v11    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v40    # "agentSuccess":Z
    .restart local v45    # "toCopy":J
    .restart local v47    # "isSharedStorage":Z
    .restart local v48    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    goto/16 :goto_689

    .line 543
    .end local v40    # "agentSuccess":Z
    .end local v45    # "toCopy":J
    .end local v47    # "isSharedStorage":Z
    .end local v48    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v6    # "agentSuccess":Z
    .restart local v7    # "toCopy":J
    .restart local v9    # "isSharedStorage":Z
    .restart local v11    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_56c
    move-exception v0

    move/from16 v40, v6

    move-wide/from16 v45, v7

    move/from16 v47, v9

    move-object/from16 v48, v11

    move-object v2, v0

    move/from16 v16, v14

    .end local v6    # "agentSuccess":Z
    .end local v7    # "toCopy":J
    .end local v9    # "isSharedStorage":Z
    .end local v11    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v40    # "agentSuccess":Z
    .restart local v45    # "toCopy":J
    .restart local v47    # "isSharedStorage":Z
    .restart local v48    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    goto/16 :goto_6ad

    .line 509
    .end local v40    # "agentSuccess":Z
    .end local v45    # "toCopy":J
    .end local v47    # "isSharedStorage":Z
    .end local v48    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v6    # "agentSuccess":Z
    .restart local v7    # "toCopy":J
    .restart local v9    # "isSharedStorage":Z
    .restart local v11    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :cond_57a
    move/from16 v40, v6

    move-wide/from16 v45, v7

    move/from16 v47, v9

    move-object/from16 v48, v11

    .end local v6    # "agentSuccess":Z
    .end local v7    # "toCopy":J
    .end local v9    # "isSharedStorage":Z
    .end local v11    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v40    # "agentSuccess":Z
    .restart local v45    # "toCopy":J
    .restart local v47    # "isSharedStorage":Z
    .restart local v48    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :try_start_582
    iget-object v4, v3, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_588
    .catch Ljava/io/IOException; {:try_start_582 .. :try_end_588} :catch_678
    .catch Landroid/os/RemoteException; {:try_start_582 .. :try_end_588} :catch_673

    if-eqz v2, :cond_5e5

    .line 513
    :try_start_58a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Restoring key-value file for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v3, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    iget-wide v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAppVersion:J

    iput-wide v4, v3, Lcom/android/server/backup/FileMetadata;->version:J

    .line 518
    new-instance v2, Lcom/android/server/backup/KeyValueAdbRestoreEngine;

    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 521
    invoke-virtual {v4}, Lcom/android/server/backup/UserBackupManagerService;->getDataDir()Ljava/io/File;

    move-result-object v18

    iget-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v6, 0x0

    aget-object v20, v5, v6

    iget-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    move-object/from16 v16, v2

    move-object/from16 v17, v4

    move-object/from16 v19, v3

    move-object/from16 v21, v5

    move/from16 v22, p6

    invoke-direct/range {v16 .. v22}, Lcom/android/server/backup/KeyValueAdbRestoreEngine;-><init>(Lcom/android/server/backup/UserBackupManagerService;Ljava/io/File;Lcom/android/server/backup/FileMetadata;Landroid/os/ParcelFileDescriptor;Landroid/app/IBackupAgent;I)V

    .line 523
    .local v2, "restoreEngine":Lcom/android/server/backup/KeyValueAdbRestoreEngine;
    new-instance v4, Ljava/lang/Thread;

    const-string/jumbo v5, "restore-key-value-runner"

    invoke-direct {v4, v2, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_5d5
    .catch Ljava/io/IOException; {:try_start_58a .. :try_end_5d5} :catch_5df
    .catch Landroid/os/RemoteException; {:try_start_58a .. :try_end_5d5} :catch_5d9

    .line 524
    .end local v2    # "restoreEngine":Lcom/android/server/backup/KeyValueAdbRestoreEngine;
    move/from16 v16, v14

    goto/16 :goto_668

    .line 548
    :catch_5d9
    move-exception v0

    move-object v2, v0

    move/from16 v16, v14

    goto/16 :goto_689

    .line 543
    :catch_5df
    move-exception v0

    move-object v2, v0

    move/from16 v16, v14

    goto/16 :goto_6ad

    .line 525
    :cond_5e5
    :try_start_5e5
    sget-boolean v2, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z
    :try_end_5e7
    .catch Ljava/io/IOException; {:try_start_5e5 .. :try_end_5e7} :catch_678
    .catch Landroid/os/RemoteException; {:try_start_5e5 .. :try_end_5e7} :catch_673

    if-eqz v2, :cond_601

    .line 526
    :try_start_5e9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invoking agent to restore file "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v3, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_601
    .catch Ljava/io/IOException; {:try_start_5e9 .. :try_end_601} :catch_5df
    .catch Landroid/os/RemoteException; {:try_start_5e9 .. :try_end_601} :catch_5d9

    .line 532
    :cond_601
    :try_start_601
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string/jumbo v4, "system"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_60c
    .catch Ljava/io/IOException; {:try_start_601 .. :try_end_60c} :catch_678
    .catch Landroid/os/RemoteException; {:try_start_601 .. :try_end_60c} :catch_673

    if-eqz v2, :cond_63a

    .line 533
    :try_start_60e
    const-string/jumbo v2, "system process agent - spinning a thread"

    invoke-static {v13, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    new-instance v2, Lcom/android/server/backup/restore/RestoreFileRunnable;

    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    iget-object v6, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v7, 0x0

    aget-object v20, v6, v7

    move-object/from16 v16, v2

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v3

    move/from16 v21, p6

    invoke-direct/range {v16 .. v21}, Lcom/android/server/backup/restore/RestoreFileRunnable;-><init>(Lcom/android/server/backup/UserBackupManagerService;Landroid/app/IBackupAgent;Lcom/android/server/backup/FileMetadata;Landroid/os/ParcelFileDescriptor;I)V

    .line 536
    .local v2, "runner":Lcom/android/server/backup/restore/RestoreFileRunnable;
    new-instance v4, Ljava/lang/Thread;

    const-string/jumbo v5, "restore-sys-runner"

    invoke-direct {v4, v2, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_637
    .catch Ljava/io/IOException; {:try_start_60e .. :try_end_637} :catch_5df
    .catch Landroid/os/RemoteException; {:try_start_60e .. :try_end_637} :catch_5d9

    .line 537
    .end local v2    # "runner":Lcom/android/server/backup/restore/RestoreFileRunnable;
    move/from16 v16, v14

    goto :goto_668

    .line 538
    :cond_63a
    :try_start_63a
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v5, 0x0

    aget-object v26, v4, v5

    iget-wide v4, v3, Lcom/android/server/backup/FileMetadata;->size:J

    iget v6, v3, Lcom/android/server/backup/FileMetadata;->type:I

    iget-object v7, v3, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    iget-object v8, v3, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    iget-wide v9, v3, Lcom/android/server/backup/FileMetadata;->mode:J

    iget-wide v11, v3, Lcom/android/server/backup/FileMetadata;->mtime:J
    :try_end_64d
    .catch Ljava/io/IOException; {:try_start_63a .. :try_end_64d} :catch_678
    .catch Landroid/os/RemoteException; {:try_start_63a .. :try_end_64d} :catch_673

    move/from16 v16, v14

    .end local v14    # "okay":Z
    .local v16, "okay":Z
    :try_start_64f
    iget-object v14, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 540
    invoke-virtual {v14}, Lcom/android/server/backup/UserBackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v37

    .line 538
    move-object/from16 v25, v2

    move-wide/from16 v27, v4

    move/from16 v29, v6

    move-object/from16 v30, v7

    move-object/from16 v31, v8

    move-wide/from16 v32, v9

    move-wide/from16 v34, v11

    move/from16 v36, p6

    invoke-interface/range {v25 .. v37}, Landroid/app/IBackupAgent;->doRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    :try_end_668
    .catch Ljava/io/IOException; {:try_start_64f .. :try_end_668} :catch_670
    .catch Landroid/os/RemoteException; {:try_start_64f .. :try_end_668} :catch_66d

    .line 554
    :goto_668
    move/from16 v14, v16

    move/from16 v6, v40

    goto :goto_6b5

    .line 548
    :catch_66d
    move-exception v0

    move-object v2, v0

    goto :goto_689

    .line 543
    :catch_670
    move-exception v0

    move-object v2, v0

    goto :goto_6ad

    .line 548
    .end local v16    # "okay":Z
    .restart local v14    # "okay":Z
    :catch_673
    move-exception v0

    move/from16 v16, v14

    move-object v2, v0

    .end local v14    # "okay":Z
    .restart local v16    # "okay":Z
    goto :goto_689

    .line 543
    .end local v16    # "okay":Z
    .restart local v14    # "okay":Z
    :catch_678
    move-exception v0

    move/from16 v16, v14

    move-object v2, v0

    .end local v14    # "okay":Z
    .restart local v16    # "okay":Z
    goto :goto_6ad

    .line 548
    .end local v16    # "okay":Z
    .end local v40    # "agentSuccess":Z
    .end local v45    # "toCopy":J
    .end local v47    # "isSharedStorage":Z
    .end local v48    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v6    # "agentSuccess":Z
    .restart local v7    # "toCopy":J
    .restart local v9    # "isSharedStorage":Z
    .restart local v11    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v14    # "okay":Z
    :catch_67d
    move-exception v0

    move/from16 v40, v6

    move-wide/from16 v45, v7

    move/from16 v47, v9

    move-object/from16 v48, v11

    move/from16 v16, v14

    move-object v2, v0

    .line 551
    .end local v6    # "agentSuccess":Z
    .end local v7    # "toCopy":J
    .end local v9    # "isSharedStorage":Z
    .end local v11    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v14    # "okay":Z
    .local v2, "e":Landroid/os/RemoteException;
    .restart local v16    # "okay":Z
    .restart local v40    # "agentSuccess":Z
    .restart local v45    # "toCopy":J
    .restart local v47    # "isSharedStorage":Z
    .restart local v48    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :goto_689
    :try_start_689
    const-string v4, "Agent crashed during full restore"

    invoke-static {v13, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68e
    .catch Ljava/io/IOException; {:try_start_689 .. :try_end_68e} :catch_692

    .line 552
    const/4 v6, 0x0

    .line 553
    .end local v40    # "agentSuccess":Z
    .restart local v6    # "agentSuccess":Z
    const/4 v4, 0x0

    move v14, v4

    .end local v16    # "okay":Z
    .local v4, "okay":Z
    goto :goto_6b5

    .line 636
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v4    # "okay":Z
    .end local v6    # "agentSuccess":Z
    .end local v15    # "pkg":Ljava/lang/String;
    .end local v39    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .end local v43    # "timeout":J
    .end local v45    # "toCopy":J
    .end local v47    # "isSharedStorage":Z
    :catch_692
    move-exception v0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    :goto_697
    move/from16 v9, p6

    move-object/from16 v3, p7

    move-object v4, v0

    move-object v2, v13

    move-object/from16 v11, v48

    goto/16 :goto_86d

    .line 543
    .end local v48    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v6    # "agentSuccess":Z
    .restart local v7    # "toCopy":J
    .restart local v9    # "isSharedStorage":Z
    .restart local v11    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v14    # "okay":Z
    .restart local v15    # "pkg":Ljava/lang/String;
    .restart local v39    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v43    # "timeout":J
    :catch_6a1
    move-exception v0

    move/from16 v40, v6

    move-wide/from16 v45, v7

    move/from16 v47, v9

    move-object/from16 v48, v11

    move/from16 v16, v14

    move-object v2, v0

    .line 545
    .end local v6    # "agentSuccess":Z
    .end local v7    # "toCopy":J
    .end local v9    # "isSharedStorage":Z
    .end local v11    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v14    # "okay":Z
    .local v2, "e":Ljava/io/IOException;
    .restart local v16    # "okay":Z
    .restart local v40    # "agentSuccess":Z
    .restart local v45    # "toCopy":J
    .restart local v47    # "isSharedStorage":Z
    .restart local v48    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :goto_6ad
    :try_start_6ad
    const-string v4, "Couldn\'t establish restore"

    invoke-static {v13, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b2
    .catch Ljava/io/IOException; {:try_start_6ad .. :try_end_6b2} :catch_7d0

    .line 546
    const/4 v6, 0x0

    .line 547
    .end local v40    # "agentSuccess":Z
    .restart local v6    # "agentSuccess":Z
    const/4 v2, 0x0

    .line 554
    .end local v16    # "okay":Z
    .local v2, "okay":Z
    move v14, v2

    .line 557
    .end local v2    # "okay":Z
    .restart local v14    # "okay":Z
    :goto_6b5
    if-eqz v14, :cond_77c

    .line 558
    :try_start_6b7
    sget-boolean v2, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z
    :try_end_6b9
    .catch Ljava/io/IOException; {:try_start_6b7 .. :try_end_6b9} :catch_76e

    if-eqz v2, :cond_6da

    .line 559
    :try_start_6bb
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  copying to restore agent: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v4, v45

    .end local v45    # "toCopy":J
    .local v4, "toCopy":J
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " bytes"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6d9
    .catch Ljava/io/IOException; {:try_start_6bb .. :try_end_6d9} :catch_692

    goto :goto_6dc

    .line 558
    .end local v4    # "toCopy":J
    .restart local v45    # "toCopy":J
    :cond_6da
    move-wide/from16 v4, v45

    .line 561
    .end local v45    # "toCopy":J
    .restart local v4    # "toCopy":J
    :goto_6dc
    const/4 v2, 0x1

    .line 562
    .local v2, "pipeOkay":Z
    :try_start_6dd
    new-instance v7, Ljava/io/FileOutputStream;

    iget-object v8, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v8, v8, v24

    .line 563
    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_6ea
    .catch Ljava/io/IOException; {:try_start_6dd .. :try_end_6ea} :catch_76e

    .line 564
    .local v7, "pipe":Ljava/io/FileOutputStream;
    :goto_6ea
    const-wide/16 v8, 0x0

    cmp-long v10, v4, v8

    if-lez v10, :cond_750

    .line 565
    move-object/from16 v8, p3

    :try_start_6f2
    array-length v9, v8
    :try_end_6f3
    .catch Ljava/io/IOException; {:try_start_6f2 .. :try_end_6f3} :catch_748

    int-to-long v9, v9

    cmp-long v9, v4, v9

    if-lez v9, :cond_6fe

    .line 566
    :try_start_6f8
    array-length v9, v8
    :try_end_6f9
    .catch Ljava/io/IOException; {:try_start_6f8 .. :try_end_6f9} :catch_6fa

    goto :goto_6ff

    .line 636
    .end local v2    # "pipeOkay":Z
    .end local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v4    # "toCopy":J
    .end local v6    # "agentSuccess":Z
    .end local v7    # "pipe":Ljava/io/FileOutputStream;
    .end local v14    # "okay":Z
    .end local v15    # "pkg":Ljava/lang/String;
    .end local v39    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .end local v43    # "timeout":J
    .end local v47    # "isSharedStorage":Z
    :catch_6fa
    move-exception v0

    move-object/from16 v7, p1

    goto :goto_697

    .line 566
    .restart local v2    # "pipeOkay":Z
    .restart local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v4    # "toCopy":J
    .restart local v6    # "agentSuccess":Z
    .restart local v7    # "pipe":Ljava/io/FileOutputStream;
    .restart local v14    # "okay":Z
    .restart local v15    # "pkg":Ljava/lang/String;
    .restart local v39    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v43    # "timeout":J
    .restart local v47    # "isSharedStorage":Z
    :cond_6fe
    long-to-int v9, v4

    .line 567
    .local v9, "toRead":I
    :goto_6ff
    move-object/from16 v10, p1

    move-object/from16 v11, v48

    const/4 v12, 0x0

    .end local v48    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v11    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :try_start_704
    invoke-virtual {v10, v8, v12, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v16
    :try_end_708
    .catch Ljava/io/IOException; {:try_start_704 .. :try_end_708} :catch_743

    move/from16 v12, v16

    .line 568
    .local v12, "nRead":I
    if-gtz v12, :cond_70f

    .line 569
    move/from16 v17, v2

    goto :goto_756

    .line 571
    :cond_70f
    move/from16 v16, v9

    .end local v9    # "toRead":I
    .local v16, "toRead":I
    int-to-long v9, v12

    sub-long/2addr v4, v9

    .line 575
    if-eqz v2, :cond_73c

    .line 577
    const/4 v9, 0x0

    :try_start_716
    invoke-virtual {v7, v8, v9, v12}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_719
    .catch Ljava/io/IOException; {:try_start_716 .. :try_end_719} :catch_71c

    .line 582
    move/from16 v17, v2

    goto :goto_73e

    .line 578
    :catch_71c
    move-exception v0

    move-object v9, v0

    .line 579
    .local v9, "e":Ljava/io/IOException;
    :try_start_71e
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v2

    .end local v2    # "pipeOkay":Z
    .local v17, "pipeOkay":Z
    const-string v2, "Failed to write to restore pipe: "

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 580
    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 579
    invoke-static {v13, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_73a
    .catch Ljava/io/IOException; {:try_start_71e .. :try_end_73a} :catch_743

    .line 581
    const/4 v2, 0x0

    .end local v17    # "pipeOkay":Z
    .restart local v2    # "pipeOkay":Z
    goto :goto_740

    .line 575
    .end local v9    # "e":Ljava/io/IOException;
    :cond_73c
    move/from16 v17, v2

    .line 584
    .end local v2    # "pipeOkay":Z
    .end local v12    # "nRead":I
    .end local v16    # "toRead":I
    .restart local v17    # "pipeOkay":Z
    :goto_73e
    move/from16 v2, v17

    .end local v17    # "pipeOkay":Z
    .restart local v2    # "pipeOkay":Z
    :goto_740
    move-object/from16 v48, v11

    goto :goto_6ea

    .line 636
    .end local v2    # "pipeOkay":Z
    .end local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v4    # "toCopy":J
    .end local v6    # "agentSuccess":Z
    .end local v7    # "pipe":Ljava/io/FileOutputStream;
    .end local v14    # "okay":Z
    .end local v15    # "pkg":Ljava/lang/String;
    .end local v39    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .end local v43    # "timeout":J
    .end local v47    # "isSharedStorage":Z
    :catch_743
    move-exception v0

    move-object/from16 v7, p1

    goto/16 :goto_363

    .end local v11    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v48    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_748
    move-exception v0

    move-object/from16 v11, v48

    move-object/from16 v7, p1

    move/from16 v9, p6

    goto :goto_777

    .line 564
    .restart local v2    # "pipeOkay":Z
    .restart local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v4    # "toCopy":J
    .restart local v6    # "agentSuccess":Z
    .restart local v7    # "pipe":Ljava/io/FileOutputStream;
    .restart local v14    # "okay":Z
    .restart local v15    # "pkg":Ljava/lang/String;
    .restart local v39    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v43    # "timeout":J
    .restart local v47    # "isSharedStorage":Z
    :cond_750
    move-object/from16 v8, p3

    move/from16 v17, v2

    move-object/from16 v11, v48

    .line 588
    .end local v2    # "pipeOkay":Z
    .end local v48    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v11    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v17    # "pipeOkay":Z
    :goto_756
    :try_start_756
    iget-wide v9, v3, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v11, v9, v10}, Lcom/android/server/backup/utils/TarBackupReader;->skipTarPadding(J)V

    .line 592
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;
    :try_end_75d
    .catch Ljava/io/IOException; {:try_start_756 .. :try_end_75d} :catch_767

    move/from16 v9, p6

    :try_start_75f
    invoke-virtual {v2, v9}, Lcom/android/server/backup/UserBackupManagerService;->waitUntilOperationComplete(I)Z

    move-result v2
    :try_end_763
    .catch Ljava/io/IOException; {:try_start_75f .. :try_end_763} :catch_765

    move v6, v2

    goto :goto_784

    .line 636
    .end local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v4    # "toCopy":J
    .end local v6    # "agentSuccess":Z
    .end local v7    # "pipe":Ljava/io/FileOutputStream;
    .end local v14    # "okay":Z
    .end local v15    # "pkg":Ljava/lang/String;
    .end local v17    # "pipeOkay":Z
    .end local v39    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .end local v43    # "timeout":J
    .end local v47    # "isSharedStorage":Z
    :catch_765
    move-exception v0

    goto :goto_76a

    :catch_767
    move-exception v0

    move/from16 v9, p6

    :goto_76a
    move-object/from16 v7, p1

    goto/16 :goto_365

    .end local v11    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v48    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_76e
    move-exception v0

    move-object/from16 v8, p3

    move/from16 v9, p6

    move-object/from16 v11, v48

    move-object/from16 v7, p1

    :goto_777
    move-object/from16 v3, p7

    move-object v4, v0

    move-object v2, v13

    goto :goto_7dd

    .line 557
    .restart local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v6    # "agentSuccess":Z
    .restart local v14    # "okay":Z
    .restart local v15    # "pkg":Ljava/lang/String;
    .restart local v39    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v43    # "timeout":J
    .restart local v45    # "toCopy":J
    .restart local v47    # "isSharedStorage":Z
    :cond_77c
    move-object/from16 v8, p3

    move/from16 v9, p6

    move-wide/from16 v4, v45

    move-object/from16 v11, v48

    .line 597
    .end local v45    # "toCopy":J
    .end local v48    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v4    # "toCopy":J
    .restart local v11    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :goto_784
    if-nez v6, :cond_7ce

    .line 598
    :try_start_786
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Agent failure restoring "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "; ending restore"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v7, 0x12

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 601
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownPipes()V

    .line 602
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    const/4 v7, 0x0

    invoke-direct {v1, v2, v7}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V

    .line 603
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    .line 604
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v7, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v2, v15, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7c0
    .catch Ljava/io/IOException; {:try_start_786 .. :try_end_7c0} :catch_7cc

    .line 608
    move-object v2, v13

    if-eqz p4, :cond_7ef

    .line 609
    const/4 v7, -0x2

    :try_start_7c4
    invoke-virtual {v1, v7}, Lcom/android/server/backup/restore/FullRestoreEngine;->setResult(I)V

    .line 610
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lcom/android/server/backup/restore/FullRestoreEngine;->setRunning(Z)V

    .line 611
    return v7

    .line 636
    .end local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v4    # "toCopy":J
    .end local v6    # "agentSuccess":Z
    .end local v14    # "okay":Z
    .end local v15    # "pkg":Ljava/lang/String;
    .end local v39    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .end local v43    # "timeout":J
    .end local v47    # "isSharedStorage":Z
    :catch_7cc
    move-exception v0

    goto :goto_7e4

    .line 597
    .restart local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v4    # "toCopy":J
    .restart local v6    # "agentSuccess":Z
    .restart local v14    # "okay":Z
    .restart local v15    # "pkg":Ljava/lang/String;
    .restart local v39    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v43    # "timeout":J
    .restart local v47    # "isSharedStorage":Z
    :cond_7ce
    move-object v2, v13

    goto :goto_7ef

    .line 636
    .end local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v4    # "toCopy":J
    .end local v6    # "agentSuccess":Z
    .end local v11    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v14    # "okay":Z
    .end local v15    # "pkg":Ljava/lang/String;
    .end local v39    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .end local v43    # "timeout":J
    .end local v47    # "isSharedStorage":Z
    .restart local v48    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_7d0
    move-exception v0

    move-object/from16 v8, p3

    move/from16 v9, p6

    move-object v2, v13

    move-object/from16 v11, v48

    move-object/from16 v7, p1

    move-object/from16 v3, p7

    move-object v4, v0

    .end local v48    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v11    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :goto_7dd
    goto/16 :goto_86d

    :catch_7df
    move-exception v0

    move-object/from16 v8, p3

    move/from16 v9, p6

    :goto_7e4
    move-object v2, v13

    :goto_7e5
    move-object/from16 v7, p1

    goto :goto_834

    .line 486
    .restart local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v14    # "okay":Z
    .restart local v15    # "pkg":Ljava/lang/String;
    .restart local v39    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    :cond_7e8
    move-object/from16 v8, p3

    move/from16 v9, p6

    move-object v2, v13

    move/from16 v16, v14

    .line 619
    :cond_7ef
    :goto_7ef
    if-nez v14, :cond_829

    .line 620
    sget-boolean v4, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v4, :cond_7fa

    .line 621
    const-string v4, "[discarding file content]"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    :cond_7fa
    iget-wide v4, v3, Lcom/android/server/backup/FileMetadata;->size:J

    const-wide/16 v6, 0x1ff

    add-long/2addr v4, v6

    const-wide/16 v6, -0x200

    and-long/2addr v4, v6

    .line 624
    .local v4, "bytesToConsume":J
    :goto_802
    const-wide/16 v6, 0x0

    cmp-long v10, v4, v6

    if-lez v10, :cond_824

    .line 625
    array-length v6, v8

    int-to-long v6, v6

    cmp-long v6, v4, v6

    if-lez v6, :cond_810

    .line 626
    array-length v6, v8
    :try_end_80f
    .catch Ljava/io/IOException; {:try_start_7c4 .. :try_end_80f} :catch_827

    goto :goto_811

    :cond_810
    long-to-int v6, v4

    .line 627
    .local v6, "toRead":I
    :goto_811
    move-object/from16 v7, p1

    const/4 v10, 0x0

    :try_start_814
    invoke-virtual {v7, v8, v10, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v12
    :try_end_818
    .catch Ljava/io/IOException; {:try_start_814 .. :try_end_818} :catch_822

    int-to-long v12, v12

    .line 628
    .local v12, "nRead":J
    const-wide/16 v16, 0x0

    cmp-long v10, v12, v16

    if-gtz v10, :cond_820

    .line 629
    goto :goto_85a

    .line 631
    :cond_820
    sub-long/2addr v4, v12

    .line 632
    .end local v6    # "toRead":I
    .end local v12    # "nRead":J
    goto :goto_802

    .line 636
    .end local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v4    # "bytesToConsume":J
    .end local v14    # "okay":Z
    .end local v15    # "pkg":Ljava/lang/String;
    .end local v39    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    :catch_822
    move-exception v0

    goto :goto_834

    .line 624
    .restart local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v4    # "bytesToConsume":J
    .restart local v14    # "okay":Z
    .restart local v15    # "pkg":Ljava/lang/String;
    .restart local v39    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    :cond_824
    move-object/from16 v7, p1

    goto :goto_85a

    .line 636
    .end local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v4    # "bytesToConsume":J
    .end local v14    # "okay":Z
    .end local v15    # "pkg":Ljava/lang/String;
    .end local v39    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    :catch_827
    move-exception v0

    goto :goto_7e5

    .line 619
    .restart local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v14    # "okay":Z
    .restart local v15    # "pkg":Ljava/lang/String;
    .restart local v39    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    :cond_829
    move-object/from16 v7, p1

    goto :goto_85a

    .line 636
    .end local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v14    # "okay":Z
    .end local v15    # "pkg":Ljava/lang/String;
    .end local v39    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    :catch_82c
    move-exception v0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    move/from16 v9, p6

    move-object v2, v13

    :goto_834
    move-object/from16 v3, p7

    move-object v4, v0

    goto :goto_86d

    .end local v11    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v38    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v10    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v18    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_838
    move-exception v0

    move/from16 v9, p6

    move-object v2, v8

    move-object/from16 v38, v10

    move-object v7, v11

    move-object v8, v12

    move-object/from16 v11, v18

    move-object/from16 v3, p7

    move-object v4, v0

    .end local v10    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v18    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v11    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v38    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    :goto_845
    goto :goto_86d

    .end local v11    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v38    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .local v7, "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v10    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    :catch_846
    move-exception v0

    move/from16 v9, p6

    move-object v2, v8

    move-object/from16 v38, v10

    move-object v8, v12

    goto :goto_865

    .line 214
    .restart local v5    # "info":Lcom/android/server/backup/FileMetadata;
    :cond_84e
    move/from16 v9, p6

    move-object v3, v5

    move-object/from16 v38, v10

    move-object v8, v12

    move-object v2, v15

    move-object/from16 v49, v11

    move-object v11, v7

    move-object/from16 v7, v49

    .line 642
    .end local v5    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v7    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v10    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v11    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v38    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    :goto_85a
    move-object/from16 v4, p7

    .end local p7    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .local v4, "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :goto_85c
    move-object v5, v3

    goto :goto_88e

    .line 636
    .end local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v4    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .end local v11    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v38    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v7    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v10    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local p7    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :catch_85e
    move-exception v0

    move/from16 v9, p6

    move-object/from16 v38, v10

    move-object v8, v12

    move-object v2, v15

    :goto_865
    move-object/from16 v49, v11

    move-object v11, v7

    move-object/from16 v7, v49

    move-object/from16 v3, p7

    move-object v4, v0

    .line 638
    .end local v7    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v10    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local p7    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .local v3, "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .local v4, "e":Ljava/io/IOException;
    .restart local v11    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v38    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    :goto_86d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "io exception on restore socket read: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    const/4 v5, -0x3

    invoke-virtual {v1, v5}, Lcom/android/server/backup/restore/FullRestoreEngine;->setResult(I)V

    .line 641
    const/4 v5, 0x0

    move-object v4, v3

    .line 645
    .end local v3    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .local v4, "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .restart local v5    # "info":Lcom/android/server/backup/FileMetadata;
    :goto_88e
    invoke-static {}, Lcom/android/server/backup/BackupManagerServiceStub;->getInstance()Lcom/android/server/backup/BackupManagerServiceStub;

    move-result-object v3

    iget v6, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mInputFD:I

    invoke-interface {v3, v6}, Lcom/android/server/backup/BackupManagerServiceStub;->isCanceling(I)Z

    move-result v3

    if-eqz v3, :cond_89e

    .line 646
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/server/backup/restore/FullRestoreEngine;->setRunning(Z)V

    .line 648
    :cond_89e
    if-nez v5, :cond_8bb

    .line 649
    invoke-static {}, Lcom/android/server/backup/BackupManagerServiceStub;->getInstance()Lcom/android/server/backup/BackupManagerServiceStub;

    move-result-object v12

    iget-object v13, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v14, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    .line 650
    invoke-virtual {v13}, Lcom/android/server/backup/UserBackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v15

    iget v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mInputFD:I

    iget-object v6, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 651
    invoke-virtual {v6}, Lcom/android/server/backup/UserBackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v17

    const/16 v18, 0x12

    .line 649
    move/from16 v16, v3

    invoke-interface/range {v12 .. v18}, Lcom/android/server/backup/BackupManagerServiceStub;->restoreFileEnd(Lcom/android/server/backup/UserBackupManagerService;Landroid/app/IBackupAgent;Landroid/app/backup/IBackupManager;ILandroid/os/Handler;I)V

    .line 656
    :cond_8bb
    if-nez v5, :cond_8d7

    .line 657
    sget-boolean v3, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v3, :cond_8c6

    .line 658
    const-string v3, "No [more] data for this package; tearing down"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    :cond_8c6
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownPipes()V

    .line 661
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/backup/restore/FullRestoreEngine;->setRunning(Z)V

    .line 662
    if-eqz p2, :cond_8d8

    .line 663
    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-boolean v6, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mIsAdbRestore:Z

    invoke-direct {v1, v3, v6}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V

    goto :goto_8d8

    .line 656
    :cond_8d7
    const/4 v2, 0x0

    .line 666
    :cond_8d8
    :goto_8d8
    if-eqz v5, :cond_8dd

    move/from16 v14, v24

    goto :goto_8de

    :cond_8dd
    move v14, v2

    :goto_8de
    return v14

    nop

    :pswitch_data_8e0
    .packed-switch 0x1
        :pswitch_335
        :pswitch_27e
        :pswitch_24c
    .end packed-switch
.end method

.method sendOnRestorePackage(Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 841
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    if-eqz v0, :cond_13

    .line 844
    :try_start_4
    invoke-interface {v0, p1}, Landroid/app/backup/IFullBackupRestoreObserver;->onRestorePackage(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 848
    goto :goto_13

    .line 845
    :catch_8
    move-exception v0

    .line 846
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string v2, "full restore observer went away: restorePackage"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 850
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_13
    :goto_13
    return-void
.end method

.method public setObbConnection(Lcom/android/server/backup/fullbackup/FullBackupObbConnection;)V
    .registers 2
    .param p1, "obbConnection"    # Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    .line 857
    iput-object p1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    .line 858
    return-void
.end method

.method shouldSkipReadOnlyDir(Lcom/android/server/backup/FileMetadata;)Z
    .registers 5
    .param p1, "info"    # Lcom/android/server/backup/FileMetadata;

    .line 670
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mReadOnlyParent:Lcom/android/server/backup/FileMetadata;

    invoke-static {v0, p1}, Lcom/android/server/backup/restore/FullRestoreEngine;->isValidParent(Lcom/android/server/backup/FileMetadata;Lcom/android/server/backup/FileMetadata;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 673
    return v1

    .line 677
    :cond_a
    invoke-static {p1}, Lcom/android/server/backup/restore/FullRestoreEngine;->isReadOnlyDir(Lcom/android/server/backup/FileMetadata;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 680
    iput-object p1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mReadOnlyParent:Lcom/android/server/backup/FileMetadata;

    .line 681
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping restore of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " and its contents as read-only dirs are currently not supported."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BackupManagerService"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    return v1

    .line 685
    :cond_33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mReadOnlyParent:Lcom/android/server/backup/FileMetadata;

    .line 689
    const/4 v0, 0x0

    return v0
.end method
