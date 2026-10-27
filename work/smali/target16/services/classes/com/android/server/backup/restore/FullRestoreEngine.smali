.class public Lcom/android/server/backup/restore/FullRestoreEngine;
.super Lcom/android/server/backup/restore/RestoreEngine;
.source "FullRestoreEngine.java"


# instance fields
.field public mAgent:Landroid/app/IBackupAgent;

.field public mAgentPackage:Ljava/lang/String;

.field public final mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

.field public final mAllowApks:Z

.field public mAppVersion:J

.field public final mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

.field public mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

.field public final mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field public final mBuffer:[B

.field public final mClearedPackages:Ljava/util/HashSet;

.field public mContentVersion:Ljava/lang/String;

.field public final mDeleteObserver:Lcom/android/server/backup/restore/RestoreDeleteObserver;

.field public final mEphemeralOpToken:I

.field public final mIsAdbRestore:Z

.field public final mManifestSignatures:Ljava/util/HashMap;

.field public final mMonitor:Landroid/app/backup/IBackupManagerMonitor;

.field public final mMonitorTask:Lcom/android/server/backup/BackupRestoreTask;

.field public mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

.field public mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

.field public final mOnlyPackage:Landroid/content/pm/PackageInfo;

.field public final mOperationStorage:Lcom/android/server/backup/OperationStorage;

.field public final mPackageInstallers:Ljava/util/HashMap;

.field public final mPackagePolicies:Ljava/util/HashMap;

.field public mPipes:[Landroid/os/ParcelFileDescriptor;

.field public mPipesClosed:Z

.field public final mPipesLock:Ljava/lang/Object;

.field public mReadOnlyParent:Lcom/android/server/backup/FileMetadata;

.field public mTargetApp:Landroid/content/pm/ApplicationInfo;

.field public mTransportFlags:I

.field public final mUserId:I

.field public mWidgetData:[B


# direct methods
.method public static synthetic $r8$lambda$mvOpQ8iGB4ZvFtqRrTmz7hGfVD8(J)V
    .registers 2

    .line 0
    return-void
.end method

.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;)V
    .registers 5

    .line 194
    invoke-direct {p0}, Lcom/android/server/backup/restore/RestoreEngine;-><init>()V

    .line 93
    new-instance v0, Lcom/android/server/backup/restore/RestoreDeleteObserver;

    invoke-direct {v0}, Lcom/android/server/backup/restore/RestoreDeleteObserver;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mDeleteObserver:Lcom/android/server/backup/restore/RestoreDeleteObserver;

    const/4 v0, 0x0

    .line 115
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    .line 118
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    .line 121
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackageInstallers:Ljava/util/HashMap;

    .line 124
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mManifestSignatures:Ljava/util/HashMap;

    .line 127
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mClearedPackages:Ljava/util/HashSet;

    .line 133
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    .line 134
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipesLock:Ljava/lang/Object;

    .line 137
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mWidgetData:[B

    const/4 v1, 0x0

    .line 139
    iput v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mTransportFlags:I

    .line 141
    const-string v2, ""

    iput-object v2, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mContentVersion:Ljava/lang/String;

    .line 153
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mReadOnlyParent:Lcom/android/server/backup/FileMetadata;

    .line 195
    iput-object p1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 197
    iput-boolean v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mIsAdbRestore:Z

    .line 198
    iput-boolean v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAllowApks:Z

    .line 199
    iput v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mEphemeralOpToken:I

    .line 200
    iput v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mUserId:I

    .line 201
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 202
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 203
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBuffer:[B

    .line 204
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    .line 205
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 206
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mMonitorTask:Lcom/android/server/backup/BackupRestoreTask;

    .line 207
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mOnlyPackage:Landroid/content/pm/PackageInfo;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/OperationStorage;Lcom/android/server/backup/BackupRestoreTask;Landroid/app/backup/IFullBackupRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;Landroid/content/pm/PackageInfo;ZIZLcom/android/server/backup/utils/BackupEligibilityRules;)V
    .registers 13

    .line 167
    invoke-direct {p0}, Lcom/android/server/backup/restore/RestoreEngine;-><init>()V

    .line 93
    new-instance v0, Lcom/android/server/backup/restore/RestoreDeleteObserver;

    invoke-direct {v0}, Lcom/android/server/backup/restore/RestoreDeleteObserver;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mDeleteObserver:Lcom/android/server/backup/restore/RestoreDeleteObserver;

    const/4 v0, 0x0

    .line 115
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    .line 118
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    .line 121
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackageInstallers:Ljava/util/HashMap;

    .line 124
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mManifestSignatures:Ljava/util/HashMap;

    .line 127
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mClearedPackages:Ljava/util/HashSet;

    .line 133
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    .line 134
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipesLock:Ljava/lang/Object;

    .line 137
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mWidgetData:[B

    const/4 v1, 0x0

    .line 139
    iput v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mTransportFlags:I

    .line 141
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mContentVersion:Ljava/lang/String;

    .line 153
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mReadOnlyParent:Lcom/android/server/backup/FileMetadata;

    .line 168
    iput-object p1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 169
    iput-object p2, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    .line 170
    iput p8, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mEphemeralOpToken:I

    .line 171
    iput-object p3, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mMonitorTask:Lcom/android/server/backup/BackupRestoreTask;

    .line 172
    iput-object p4, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 173
    iput-object p5, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 174
    new-instance p2, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    invoke-direct {p2, p5}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;-><init>(Landroid/app/backup/IBackupManagerMonitor;)V

    iput-object p2, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    .line 175
    iput-object p6, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mOnlyPackage:Landroid/content/pm/PackageInfo;

    .line 176
    iput-boolean p7, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAllowApks:Z

    .line 179
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getAgentTimeoutParameters()Lcom/android/server/backup/BackupAgentTimeoutParameters;

    move-result-object p2

    const-string p3, "Timeout parameters cannot be null"

    .line 178
    invoke-static {p2, p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object p3, p2

    check-cast p3, Lcom/android/server/backup/BackupAgentTimeoutParameters;

    iput-object p2, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 181
    iput-boolean p9, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mIsAdbRestore:Z

    .line 182
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getUserId()I

    move-result p1

    iput p1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mUserId:I

    .line 183
    iput-object p10, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    const/high16 p1, 0x10000

    .line 187
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBuffer:[B

    return-void
.end method

.method public static getPathWithTrailingSeparator(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 769
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    return-object p0

    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isCanonicalFilePath(Ljava/lang/String;)Z
    .registers 2

    .line 883
    const-string v0, ".."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "//"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x1

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x0

    return p0
.end method

.method public static isReadOnlyDir(Lcom/android/server/backup/FileMetadata;)Z
    .registers 5

    .line 774
    iget v0, p0, Lcom/android/server/backup/FileMetadata;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_13

    iget-wide v0, p0, Lcom/android/server/backup/FileMetadata;->mode:J

    sget p0, Landroid/system/OsConstants;->S_IWUSR:I

    int-to-long v2, p0

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_13

    const/4 p0, 0x1

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public static isValidParent(Lcom/android/server/backup/FileMetadata;Lcom/android/server/backup/FileMetadata;)Z
    .registers 4

    if-eqz p0, :cond_26

    .line 762
    iget-object v0, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 763
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p1, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    .line 764
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object p1, p1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 765
    invoke-static {p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->getPathWithTrailingSeparator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_26

    const/4 p0, 0x1

    return p0

    :cond_26
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final bindToAgent(Lcom/android/server/backup/FileMetadata;)Landroid/app/IBackupAgent;
    .registers 5

    .line 914
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 915
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getBackupAgentConnectionManager()Lcom/android/server/backup/BackupAgentConnectionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    .line 918
    const-string/jumbo v2, "k"

    iget-object p1, p1, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    const/4 p1, 0x2

    goto :goto_16

    :cond_15
    const/4 p1, 0x3

    .line 920
    :goto_16
    iget-object p0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 921
    invoke-virtual {p0}, Lcom/android/server/backup/utils/BackupEligibilityRules;->getBackupDestination()I

    move-result p0

    .line 916
    invoke-virtual {v0, v1, p1, p0}, Lcom/android/server/backup/BackupAgentConnectionManager;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;II)Landroid/app/IBackupAgent;

    move-result-object p0

    return-object p0
.end method

.method public findValidPlatformSpecificParams(Ljava/lang/String;Lcom/android/server/backup/crossplatform/CrossPlatformManifest;Lcom/android/server/backup/utils/BackupEligibilityRules;)Landroid/app/backup/FullBackup$BackupScheme$PlatformSpecificParams;
    .registers 9

    .line 929
    const-string v0, "BackupManagerService"

    const/4 v1, 0x0

    if-nez p2, :cond_b

    .line 930
    const-string p0, "No cross-platform manifest found."

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 936
    :cond_b
    :try_start_b
    iget-object v2, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 937
    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget p0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mUserId:I

    const/high16 v3, 0x8000000

    .line 938
    invoke-virtual {v2, p1, v3, p0}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_19
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_19} :catch_61

    .line 949
    invoke-virtual {p2}, Lcom/android/server/backup/crossplatform/CrossPlatformManifest;->getPlatformSpecificParams()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_21
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_60

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/backup/FullBackup$BackupScheme$PlatformSpecificParams;

    .line 951
    const-string v0, "ios"

    invoke-virtual {p3, p0, v0}, Lcom/android/server/backup/utils/BackupEligibilityRules;->getPlatformSpecificParams(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/backup/FullBackup$BackupScheme$PlatformSpecificParams;

    .line 952
    invoke-virtual {p2}, Landroid/app/backup/FullBackup$BackupScheme$PlatformSpecificParams;->getBundleId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/app/backup/FullBackup$BackupScheme$PlatformSpecificParams;->getBundleId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 953
    invoke-virtual {p2}, Landroid/app/backup/FullBackup$BackupScheme$PlatformSpecificParams;->getTeamId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/app/backup/FullBackup$BackupScheme$PlatformSpecificParams;->getTeamId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_37

    return-object p2

    :cond_60
    return-object v1

    :catch_61
    move-exception p0

    .line 943
    const-string p1, "Unable to fetch cross-platform configuration for target app"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public getAgent()Landroid/app/IBackupAgent;
    .registers 1

    .line 211
    iget-object p0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    return-object p0
.end method

.method public getWidgetData()[B
    .registers 1

    .line 215
    iget-object p0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mWidgetData:[B

    return-object p0
.end method

.method public handleTimeout()V
    .registers 2

    .line 842
    invoke-virtual {p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownPipes()V

    const/4 v0, -0x2

    .line 843
    invoke-virtual {p0, v0}, Lcom/android/server/backup/restore/RestoreEngine;->setResult(I)V

    const/4 v0, 0x0

    .line 844
    invoke-virtual {p0, v0}, Lcom/android/server/backup/restore/RestoreEngine;->setRunning(Z)V

    return-void
.end method

.method public final isRestorableFile(Lcom/android/server/backup/FileMetadata;)Z
    .registers 5

    .line 848
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    invoke-virtual {v0}, Lcom/android/server/backup/utils/BackupEligibilityRules;->getBackupDestination()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    return v1

    .line 851
    :cond_a
    iget-object p0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 852
    invoke-virtual {p0}, Lcom/android/server/backup/utils/BackupEligibilityRules;->getBackupDestination()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_14

    return v1

    .line 858
    :cond_14
    const-string p0, "c"

    iget-object v0, p1, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_20

    return v0

    .line 865
    :cond_20
    const-string/jumbo p0, "r"

    iget-object v2, p1, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_37

    .line 870
    iget-object p0, p1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string/jumbo p1, "no_backup/"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_37

    return v0

    :cond_37
    return v1
.end method

.method public final logBMMEvent(ILandroid/content/pm/PackageInfo;)V
    .registers 3

    .line 0
    return-void
.end method

.method public restoreOneFile(Ljava/io/InputStream;Z[BLandroid/content/pm/PackageInfo;ZILandroid/app/backup/IBackupManagerMonitor;)Z
    .registers 57

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v11, p4

    .line 227
    invoke-virtual {v1}, Lcom/android/server/backup/restore/RestoreEngine;->isRunning()Z

    move-result v0

    const-string v12, "BackupManagerService"

    const/4 v13, 0x0

    if-nez v0, :cond_17

    .line 228
    const-string v0, "Restore engine used after halting"

    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v13

    .line 232
    :cond_17
    new-instance v9, Lcom/android/server/backup/restore/FullRestoreEngine$$ExternalSyntheticLambda0;

    invoke-direct {v9}, Lcom/android/server/backup/restore/FullRestoreEngine$$ExternalSyntheticLambda0;-><init>()V

    .line 234
    new-instance v14, Lcom/android/server/backup/utils/TarBackupReader;

    move-object/from16 v0, p7

    invoke-direct {v14, v2, v9, v0}, Lcom/android/server/backup/utils/TarBackupReader;-><init>(Ljava/io/InputStream;Lcom/android/server/backup/utils/BytesReadListener;Landroid/app/backup/IBackupManagerMonitor;)V

    const/4 v4, -0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 241
    :try_start_26
    invoke-virtual {v14}, Lcom/android/server/backup/utils/TarBackupReader;->readTarHeaders()Lcom/android/server/backup/FileMetadata;

    move-result-object v7

    if-eqz v7, :cond_f0

    .line 247
    iget-object v8, v7, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 248
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentPackage:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_94

    if-eqz v11, :cond_6e

    .line 252
    iget-object v0, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6e

    const/16 v0, 0x4c

    .line 253
    invoke-virtual {v1, v0, v11}, Lcom/android/server/backup/restore/FullRestoreEngine;->logBMMEvent(ILandroid/content/pm/PackageInfo;)V

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected data for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " but saw "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-virtual {v1, v4}, Lcom/android/server/backup/restore/RestoreEngine;->setResult(I)V

    .line 259
    invoke-virtual {v1, v13}, Lcom/android/server/backup/restore/RestoreEngine;->setRunning(Z)V

    return v13

    :catch_68
    move-exception v0

    move-object v10, v5

    move/from16 v28, v6

    goto/16 :goto_560

    .line 266
    :cond_6e
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7d

    .line 267
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v10, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v0, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    :cond_7d
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    if-eqz v0, :cond_94

    .line 273
    const-string v0, "Saw new package; finalizing old one"

    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-virtual {v1}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownPipes()V

    .line 276
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-boolean v10, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mIsAdbRestore:Z

    invoke-virtual {v1, v0, v10}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V

    .line 277
    iput-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    .line 278
    iput-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentPackage:Ljava/lang/String;

    .line 282
    :cond_94
    iget-object v0, v7, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string v10, "_manifest"

    invoke-virtual {v0, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f4

    .line 284
    invoke-virtual {v14, v7}, Lcom/android/server/backup/utils/TarBackupReader;->readAppManifestAndReturnSignatures(Lcom/android/server/backup/FileMetadata;)[Landroid/content/pm/Signature;

    move-result-object v18

    .line 287
    iget-wide v2, v7, Lcom/android/server/backup/FileMetadata;->version:J

    iput-wide v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAppVersion:J

    .line 288
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 289
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Landroid/content/pm/PackageManagerInternal;

    .line 290
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 292
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    iget v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mUserId:I

    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 299
    invoke-virtual {v3}, Lcom/android/server/backup/UserBackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v22

    move/from16 v16, p5

    move/from16 v20, v0

    move-object/from16 v21, v2

    move-object/from16 v17, v7

    .line 291
    invoke-virtual/range {v14 .. v22}, Lcom/android/server/backup/utils/TarBackupReader;->chooseRestorePolicy(Landroid/content/pm/PackageManager;ZLcom/android/server/backup/FileMetadata;[Landroid/content/pm/Signature;Landroid/content/pm/PackageManagerInternal;ILcom/android/server/backup/utils/BackupEligibilityRules;Landroid/content/Context;)Lcom/android/server/backup/restore/RestorePolicy;

    move-result-object v0

    move-object/from16 v7, v17

    move-object/from16 v2, v18

    .line 300
    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mManifestSignatures:Ljava/util/HashMap;

    iget-object v9, v7, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    invoke-virtual {v2, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackageInstallers:Ljava/util/HashMap;

    iget-object v2, v7, Lcom/android/server/backup/FileMetadata;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v0, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    iget-wide v2, v7, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v14, v2, v3}, Lcom/android/server/backup/utils/TarBackupReader;->skipTarPadding(J)V

    .line 307
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-static {v0, v8}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendOnRestorePackage(Landroid/app/backup/IFullBackupRestoreObserver;Ljava/lang/String;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    :cond_f0
    :goto_f0
    move/from16 v28, v6

    goto/16 :goto_55e

    .line 308
    :cond_f4
    iget-object v0, v7, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string v10, "_cross_platform_manifest"

    .line 309
    invoke-virtual {v0, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v10, 0x3

    if-eqz v0, :cond_14b

    .line 313
    invoke-virtual {v14, v7}, Lcom/android/server/backup/utils/TarBackupReader;->readCrossPlatformManifest(Lcom/android/server/backup/FileMetadata;)Lcom/android/server/backup/crossplatform/CrossPlatformManifest;

    move-result-object v0

    .line 314
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    invoke-virtual {v2}, Lcom/android/server/backup/utils/BackupEligibilityRules;->getBackupDestination()I

    move-result v2

    if-eq v2, v10, :cond_113

    .line 316
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v2, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v0, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13d

    .line 318
    :cond_113
    iget-object v2, v7, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 319
    invoke-virtual {v1, v2, v0, v3}, Lcom/android/server/backup/restore/FullRestoreEngine;->findValidPlatformSpecificParams(Ljava/lang/String;Lcom/android/server/backup/crossplatform/CrossPlatformManifest;Lcom/android/server/backup/utils/BackupEligibilityRules;)Landroid/app/backup/FullBackup$BackupScheme$PlatformSpecificParams;

    move-result-object v0

    if-nez v0, :cond_12a

    .line 322
    const-string v0, "No source declared platform-specific params found that match the target app"

    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v2, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v0, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13d

    .line 328
    :cond_12a
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v3, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v2, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    iget v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTransportFlags:I

    or-int/lit8 v2, v2, 0x8

    iput v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTransportFlags:I

    .line 330
    invoke-virtual {v0}, Landroid/app/backup/FullBackup$BackupScheme$PlatformSpecificParams;->getContentVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mContentVersion:Ljava/lang/String;

    .line 337
    :goto_13d
    iget-wide v2, v7, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v14, v2, v3}, Lcom/android/server/backup/utils/TarBackupReader;->skipTarPadding(J)V

    .line 338
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-static {v0, v8}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendOnRestorePackage(Landroid/app/backup/IFullBackupRestoreObserver;Ljava/lang/String;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    goto :goto_f0

    .line 339
    :cond_14b
    iget-object v0, v7, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string v15, "_meta"

    invoke-virtual {v0, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_167

    .line 341
    invoke-virtual {v14, v7}, Lcom/android/server/backup/utils/TarBackupReader;->readMetadata(Lcom/android/server/backup/FileMetadata;)V

    .line 347
    invoke-virtual {v14}, Lcom/android/server/backup/utils/TarBackupReader;->getWidgetData()[B

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mWidgetData:[B

    .line 349
    invoke-virtual {v14}, Lcom/android/server/backup/utils/TarBackupReader;->getMonitor()Landroid/app/backup/IBackupManagerMonitor;

    .line 351
    iget-wide v2, v7, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v14, v2, v3}, Lcom/android/server/backup/utils/TarBackupReader;->skipTarPadding(J)V

    goto :goto_f0

    .line 356
    :cond_167
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/restore/RestorePolicy;

    .line 357
    sget-object v15, Lcom/android/server/backup/restore/FullRestoreEngine$1;->$SwitchMap$com$android$server$backup$restore$RestorePolicy:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v15, v0
    :try_end_177
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_177} :catch_68

    if-eq v0, v6, :cond_18c

    const/4 v15, 0x2

    const-string v4, "a"

    if-eq v0, v15, :cond_1a9

    if-eq v0, v10, :cond_194

    .line 414
    :try_start_180
    const-string v0, "Invalid policy from manifest"

    invoke-static {v12, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v4, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v0, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18c
    :goto_18c
    move-object/from16 v16, v5

    move/from16 v28, v6

    move-object v15, v8

    :goto_191
    move v6, v13

    goto/16 :goto_215

    .line 400
    :cond_194
    iget-object v0, v7, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a2

    .line 401
    const-string v0, "apk present but ACCEPT"

    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a1
    .catch Ljava/io/IOException; {:try_start_180 .. :try_end_1a1} :catch_68

    goto :goto_18c

    :cond_1a2
    move-object/from16 v16, v5

    move/from16 v28, v6

    move-object v15, v8

    goto/16 :goto_215

    .line 365
    :cond_1a9
    :try_start_1a9
    iget-object v0, v7, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_207

    .line 366
    const-string v0, "APK file; installing"

    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackageInstallers:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 369
    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 372
    invoke-virtual {v3}, Lcom/android/server/backup/UserBackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mDeleteObserver:Lcom/android/server/backup/restore/RestoreDeleteObserver;
    :try_end_1c6
    .catch Ljava/io/IOException; {:try_start_1a9 .. :try_end_1c6} :catch_201

    move-object v10, v5

    :try_start_1c7
    iget-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mManifestSignatures:Ljava/util/HashMap;
    :try_end_1c9
    .catch Ljava/io/IOException; {:try_start_1c7 .. :try_end_1c9} :catch_1fa

    move v15, v6

    :try_start_1ca
    iget-object v6, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;
    :try_end_1cc
    .catch Ljava/io/IOException; {:try_start_1ca .. :try_end_1cc} :catch_1f3

    move-object/from16 v16, v10

    :try_start_1ce
    iget v10, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mUserId:I
    :try_end_1d0
    .catch Ljava/io/IOException; {:try_start_1ce .. :try_end_1d0} :catch_1ef

    move/from16 v28, v15

    move-object v15, v8

    move-object v8, v0

    .line 370
    :try_start_1d4
    invoke-static/range {v2 .. v10}, Lcom/android/server/backup/utils/RestoreUtils;->installApk(Ljava/io/InputStream;Landroid/content/Context;Lcom/android/server/backup/restore/RestoreDeleteObserver;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/android/server/backup/FileMetadata;Ljava/lang/String;Lcom/android/server/backup/utils/BytesReadListener;I)Z

    move-result v0

    .line 381
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    if-eqz v0, :cond_1e4

    .line 384
    sget-object v0, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT:Lcom/android/server/backup/restore/RestorePolicy;

    goto :goto_1e6

    :catch_1df
    move-exception v0

    :goto_1e0
    move-object/from16 v10, v16

    goto/16 :goto_560

    .line 385
    :cond_1e4
    sget-object v0, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    .line 381
    :goto_1e6
    invoke-virtual {v2, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    iget-wide v2, v7, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v14, v2, v3}, Lcom/android/server/backup/utils/TarBackupReader;->skipTarPadding(J)V

    return v28

    :catch_1ef
    move-exception v0

    move/from16 v28, v15

    goto :goto_1e0

    :catch_1f3
    move-exception v0

    move-object/from16 v16, v10

    move/from16 v28, v15

    goto/16 :goto_560

    :catch_1fa
    move-exception v0

    move/from16 v28, v6

    move-object/from16 v16, v10

    goto/16 :goto_560

    :catch_201
    move-exception v0

    move-object/from16 v16, v5

    move/from16 v28, v6

    goto :goto_1e0

    :cond_207
    move-object/from16 v16, v5

    move/from16 v28, v6

    move-object v15, v8

    .line 394
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v4, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v0, v15, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_191

    .line 421
    :goto_215
    invoke-virtual {v1, v7}, Lcom/android/server/backup/restore/FullRestoreEngine;->isRestorableFile(Lcom/android/server/backup/FileMetadata;)Z

    move-result v0

    if-eqz v0, :cond_223

    iget-object v0, v7, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/backup/restore/FullRestoreEngine;->isCanonicalFilePath(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_224

    :cond_223
    move v6, v13

    :cond_224
    if-eqz v6, :cond_292

    .line 430
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;
    :try_end_228
    .catch Ljava/io/IOException; {:try_start_1d4 .. :try_end_228} :catch_1df

    if-nez v0, :cond_292

    .line 436
    :try_start_22a
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 438
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mUserId:I

    .line 439
    invoke-virtual {v0, v15, v13, v4}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    .line 443
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mClearedPackages:Ljava/util/HashSet;

    invoke-virtual {v0, v15}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25f

    .line 450
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 451
    invoke-virtual {v1, v0}, Lcom/android/server/backup/restore/FullRestoreEngine;->shouldForceClearAppDataOnFullRestore(Ljava/lang/String;)Z

    move-result v0

    .line 453
    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-eqz v4, :cond_250

    if-eqz v0, :cond_25a

    .line 454
    :cond_250
    const-string v0, "Clearing app data preparatory to full restore"

    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0, v15}, Lcom/android/server/backup/UserBackupManagerService;->clearApplicationDataBeforeRestore(Ljava/lang/String;)V

    .line 465
    :cond_25a
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mClearedPackages:Ljava/util/HashSet;

    invoke-virtual {v0, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 476
    :cond_25f
    invoke-virtual {v1}, Lcom/android/server/backup/restore/FullRestoreEngine;->setUpPipes()V

    .line 477
    invoke-virtual {v1, v7}, Lcom/android/server/backup/restore/FullRestoreEngine;->bindToAgent(Lcom/android/server/backup/FileMetadata;)Landroid/app/IBackupAgent;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    .line 478
    iput-object v15, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentPackage:Ljava/lang/String;
    :try_end_26a
    .catch Ljava/io/IOException; {:try_start_22a .. :try_end_26a} :catch_26a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_22a .. :try_end_26a} :catch_26a

    .line 483
    :catch_26a
    :try_start_26a
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    if-nez v0, :cond_292

    const/16 v0, 0x4d

    .line 484
    invoke-virtual {v1, v0, v11}, Lcom/android/server/backup/restore/FullRestoreEngine;->logBMMEvent(ILandroid/content/pm/PackageInfo;)V

    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to create agent for "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    invoke-virtual {v1}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownPipes()V

    .line 491
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v4, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v0, v15, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v6, v13

    :cond_292
    if-eqz v6, :cond_2bb

    .line 497
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentPackage:Ljava/lang/String;

    invoke-virtual {v15, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2bb

    .line 498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Restoring data for "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " but agent is for "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentPackage:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v13

    .line 504
    :cond_2bb
    invoke-virtual {v1, v7}, Lcom/android/server/backup/restore/FullRestoreEngine;->shouldSkipReadOnlyDir(Lcom/android/server/backup/FileMetadata;)Z

    move-result v0

    if-eqz v0, :cond_2c2

    move v6, v13

    :cond_2c2
    if-eqz v6, :cond_535

    .line 515
    iget-wide v8, v7, Lcom/android/server/backup/FileMetadata;->size:J

    .line 516
    const-string v0, "com.android.sharedstoragebackup"

    invoke-virtual {v15, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d7

    .line 520
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getSharedBackupAgentTimeoutMillis()J

    move-result-wide v17

    :goto_2d4
    move-wide/from16 v21, v17

    goto :goto_2e2

    .line 521
    :cond_2d7
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    iget-object v10, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v10}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getRestoreAgentTimeoutMillis(I)J

    move-result-wide v17
    :try_end_2e1
    .catch Ljava/io/IOException; {:try_start_26a .. :try_end_2e1} :catch_1df

    goto :goto_2d4

    .line 524
    :goto_2e2
    :try_start_2e2
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v10, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mMonitorTask:Lcom/android/server/backup/BackupRestoreTask;

    const/16 v24, 0x1

    move/from16 v20, p6

    move-object/from16 v19, v0

    move-object/from16 v23, v10

    invoke-virtual/range {v19 .. v24}, Lcom/android/server/backup/UserBackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V

    .line 527
    const-string/jumbo v0, "obb"

    iget-object v10, v7, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2fa
    .catch Ljava/io/IOException; {:try_start_2e2 .. :try_end_2fa} :catch_463
    .catch Landroid/os/RemoteException; {:try_start_2e2 .. :try_end_2fa} :catch_459

    const-string v10, " : "

    if-eqz v0, :cond_382

    .line 528
    :try_start_2fe
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_303
    .catch Ljava/io/IOException; {:try_start_2fe .. :try_end_303} :catch_37a
    .catch Landroid/os/RemoteException; {:try_start_2fe .. :try_end_303} :catch_372

    const-wide/16 v46, 0x0

    :try_start_305
    const-string v4, "Restoring OBB file for "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v7, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31c
    .catch Ljava/io/IOException; {:try_start_305 .. :try_end_31c} :catch_36c
    .catch Landroid/os/RemoteException; {:try_start_305 .. :try_end_31c} :catch_366

    move-object/from16 v10, v16

    move-object/from16 v16, v15

    .line 529
    :try_start_320
    iget-object v15, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v17, v0, v13

    iget-wide v4, v7, Lcom/android/server/backup/FileMetadata;->size:J

    iget v0, v7, Lcom/android/server/backup/FileMetadata;->type:I

    iget-object v10, v7, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;
    :try_end_32c
    .catch Ljava/io/IOException; {:try_start_320 .. :try_end_32c} :catch_361
    .catch Landroid/os/RemoteException; {:try_start_320 .. :try_end_32c} :catch_35c

    move/from16 v48, v13

    move-object/from16 p7, v14

    :try_start_330
    iget-wide v13, v7, Lcom/android/server/backup/FileMetadata;->mode:J

    move-wide/from16 v18, v4

    iget-wide v4, v7, Lcom/android/server/backup/FileMetadata;->mtime:J

    move/from16 v20, v0

    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 538
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v27

    move/from16 v26, p6

    move-wide/from16 v24, v4

    move-object/from16 v21, v10

    move-wide/from16 v22, v13

    const/4 v4, 0x0

    .line 529
    invoke-virtual/range {v15 .. v27}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->restoreObbFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;JILjava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    :try_end_34a
    .catch Ljava/io/IOException; {:try_start_330 .. :try_end_34a} :catch_356
    .catch Landroid/os/RemoteException; {:try_start_330 .. :try_end_34a} :catch_350

    move-object/from16 v5, v16

    :goto_34c
    move-wide/from16 v17, v8

    goto/16 :goto_456

    :catch_350
    :goto_350
    move-object/from16 v5, v16

    :catch_352
    :goto_352
    move-wide/from16 v17, v8

    goto/16 :goto_46d

    :catch_356
    :goto_356
    move-object/from16 v5, v16

    :catch_358
    :goto_358
    move-wide/from16 v17, v8

    goto/16 :goto_47f

    :catch_35c
    move/from16 v48, v13

    move-object/from16 p7, v14

    goto :goto_350

    :catch_361
    move/from16 v48, v13

    move-object/from16 p7, v14

    goto :goto_356

    :catch_366
    move/from16 v48, v13

    move-object/from16 p7, v14

    move-object v5, v15

    goto :goto_352

    :catch_36c
    move/from16 v48, v13

    move-object/from16 p7, v14

    move-object v5, v15

    goto :goto_358

    :catch_372
    move/from16 v48, v13

    move-object/from16 p7, v14

    move-object v5, v15

    const-wide/16 v46, 0x0

    goto :goto_352

    :catch_37a
    move/from16 v48, v13

    move-object/from16 p7, v14

    move-object v5, v15

    const-wide/16 v46, 0x0

    goto :goto_358

    :cond_382
    move/from16 v48, v13

    move-object/from16 p7, v14

    move-object v5, v15

    move-object/from16 v4, v16

    const-wide/16 v46, 0x0

    .line 539
    :try_start_38b
    const-string/jumbo v0, "k"

    iget-object v13, v7, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e6

    .line 542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Restoring key-value file for "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    iget-wide v13, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAppVersion:J

    iput-wide v13, v7, Lcom/android/server/backup/FileMetadata;->version:J

    .line 547
    new-instance v15, Lcom/android/server/backup/KeyValueAdbRestoreEngine;

    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 550
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getDataDir()Ljava/io/File;

    move-result-object v17

    iget-object v10, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v19, v10, v48

    iget-object v10, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;
    :try_end_3c4
    .catch Ljava/io/IOException; {:try_start_38b .. :try_end_3c4} :catch_358
    .catch Landroid/os/RemoteException; {:try_start_38b .. :try_end_3c4} :catch_352

    move/from16 v21, p6

    move-object/from16 v16, v0

    move-object/from16 v18, v7

    move-object/from16 v20, v10

    :try_start_3cc
    invoke-direct/range {v15 .. v21}, Lcom/android/server/backup/KeyValueAdbRestoreEngine;-><init>(Lcom/android/server/backup/UserBackupManagerService;Ljava/io/File;Lcom/android/server/backup/FileMetadata;Landroid/os/ParcelFileDescriptor;Landroid/app/IBackupAgent;I)V
    :try_end_3cf
    .catch Ljava/io/IOException; {:try_start_3cc .. :try_end_3cf} :catch_3e2
    .catch Landroid/os/RemoteException; {:try_start_3cc .. :try_end_3cf} :catch_3de

    move-object/from16 v7, v18

    .line 555
    :try_start_3d1
    new-instance v0, Ljava/lang/Thread;

    const-string/jumbo v10, "restore-key-value-runner"

    invoke-direct {v0, v15, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_34c

    :catch_3de
    move-object/from16 v7, v18

    goto/16 :goto_352

    :catch_3e2
    move-object/from16 v7, v18

    goto/16 :goto_358

    .line 564
    :cond_3e6
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string/jumbo v10, "system"

    invoke-virtual {v0, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41d

    .line 565
    const-string/jumbo v0, "system process agent - spinning a thread"

    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    new-instance v15, Lcom/android/server/backup/restore/RestoreFileRunnable;

    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v10, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    iget-object v13, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v19, v13, v48
    :try_end_403
    .catch Ljava/io/IOException; {:try_start_3d1 .. :try_end_403} :catch_358
    .catch Landroid/os/RemoteException; {:try_start_3d1 .. :try_end_403} :catch_352

    move/from16 v20, p6

    move-object/from16 v16, v0

    move-object/from16 v18, v7

    move-object/from16 v17, v10

    :try_start_40b
    invoke-direct/range {v15 .. v20}, Lcom/android/server/backup/restore/RestoreFileRunnable;-><init>(Lcom/android/server/backup/UserBackupManagerService;Landroid/app/IBackupAgent;Lcom/android/server/backup/FileMetadata;Landroid/os/ParcelFileDescriptor;I)V
    :try_end_40e
    .catch Ljava/io/IOException; {:try_start_40b .. :try_end_40e} :catch_3e2
    .catch Landroid/os/RemoteException; {:try_start_40b .. :try_end_40e} :catch_3de

    move-object/from16 v7, v18

    .line 573
    :try_start_410
    new-instance v0, Ljava/lang/Thread;

    const-string/jumbo v10, "restore-sys-runner"

    invoke-direct {v0, v15, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_34c

    .line 575
    :cond_41d
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    iget-object v10, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v30, v10, v48

    iget-wide v13, v7, Lcom/android/server/backup/FileMetadata;->size:J

    iget v10, v7, Lcom/android/server/backup/FileMetadata;->type:I

    iget-object v15, v7, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    iget-object v4, v7, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;
    :try_end_42b
    .catch Ljava/io/IOException; {:try_start_410 .. :try_end_42b} :catch_358
    .catch Landroid/os/RemoteException; {:try_start_410 .. :try_end_42b} :catch_352

    move-wide/from16 v17, v8

    :try_start_42d
    iget-wide v8, v7, Lcom/android/server/backup/FileMetadata;->mode:J

    move-wide/from16 v36, v8

    iget-wide v8, v7, Lcom/android/server/backup/FileMetadata;->mtime:J

    move-object/from16 v29, v0

    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 584
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v41

    move-wide/from16 v38, v8

    iget-wide v8, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAppVersion:J

    iget v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTransportFlags:I

    move/from16 v44, v0

    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mContentVersion:Ljava/lang/String;

    move/from16 v40, p6

    move-object/from16 v45, v0

    move-object/from16 v35, v4

    move-wide/from16 v42, v8

    move/from16 v33, v10

    move-wide/from16 v31, v13

    move-object/from16 v34, v15

    .line 575
    invoke-interface/range {v29 .. v45}, Landroid/app/IBackupAgent;->doRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJILandroid/app/backup/IBackupManager;JILjava/lang/String;)V
    :try_end_456
    .catch Ljava/io/IOException; {:try_start_42d .. :try_end_456} :catch_47f
    .catch Landroid/os/RemoteException; {:try_start_42d .. :try_end_456} :catch_46d

    :goto_456
    move/from16 v0, v28

    goto :goto_485

    :catch_459
    move-wide/from16 v17, v8

    move/from16 v48, v13

    move-object/from16 p7, v14

    move-object v5, v15

    const-wide/16 v46, 0x0

    goto :goto_46d

    :catch_463
    move-wide/from16 v17, v8

    move/from16 v48, v13

    move-object/from16 p7, v14

    move-object v5, v15

    const-wide/16 v46, 0x0

    goto :goto_47f

    :catch_46d
    :goto_46d
    const/16 v0, 0x4e

    .line 598
    :try_start_46f
    invoke-virtual {v1, v0, v11}, Lcom/android/server/backup/restore/FullRestoreEngine;->logBMMEvent(ILandroid/content/pm/PackageInfo;)V

    .line 602
    const-string v0, "Agent crashed during full restore"

    invoke-static {v12, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_477
    move/from16 v0, v48

    move v6, v0

    goto :goto_485

    :catch_47b
    move-exception v0

    const/4 v10, 0x0

    goto/16 :goto_560

    .line 592
    :catch_47f
    :goto_47f
    const-string v0, "Couldn\'t establish restore"

    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_477

    :goto_485
    if-eqz v6, :cond_4e8

    .line 613
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, v28

    .line 614
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-wide/from16 v8, v17

    move/from16 v0, v28

    :goto_498
    cmp-long v10, v8, v46

    if-lez v10, :cond_4d9

    .line 617
    array-length v10, v3

    int-to-long v13, v10

    cmp-long v10, v8, v13

    if-lez v10, :cond_4a6

    array-length v10, v3

    :goto_4a3
    move/from16 v13, v48

    goto :goto_4a8

    :cond_4a6
    long-to-int v10, v8

    goto :goto_4a3

    .line 618
    :goto_4a8
    invoke-virtual {v2, v3, v13, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v10
    :try_end_4ac
    .catch Ljava/io/IOException; {:try_start_46f .. :try_end_4ac} :catch_47b

    if-gtz v10, :cond_4af

    goto :goto_4d9

    :cond_4af
    int-to-long v14, v10

    sub-long/2addr v8, v14

    if-eqz v0, :cond_4d6

    .line 628
    :try_start_4b3
    invoke-virtual {v4, v3, v13, v10}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4b6
    .catch Ljava/io/IOException; {:try_start_4b3 .. :try_end_4b6} :catch_4b7

    goto :goto_4d6

    :catch_4b7
    move-exception v0

    .line 630
    :try_start_4b8
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed to write to restore pipe: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 630
    invoke-static {v12, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x4f

    .line 634
    invoke-virtual {v1, v0, v11}, Lcom/android/server/backup/restore/FullRestoreEngine;->logBMMEvent(ILandroid/content/pm/PackageInfo;)V

    const/4 v0, 0x0

    :cond_4d6
    :goto_4d6
    const/16 v48, 0x0

    goto :goto_498

    .line 644
    :cond_4d9
    :goto_4d9
    iget-wide v8, v7, Lcom/android/server/backup/FileMetadata;->size:J

    move-object/from16 v14, p7

    invoke-virtual {v14, v8, v9}, Lcom/android/server/backup/utils/TarBackupReader;->skipTarPadding(J)V

    .line 648
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    move/from16 v4, p6

    invoke-virtual {v0, v4}, Lcom/android/server/backup/UserBackupManagerService;->waitUntilOperationComplete(I)Z

    move-result v0

    :cond_4e8
    if-nez v0, :cond_533

    const/16 v0, 0x50

    .line 654
    invoke-virtual {v1, v0, v11}, Lcom/android/server/backup/restore/FullRestoreEngine;->logBMMEvent(ILandroid/content/pm/PackageInfo;)V

    .line 657
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Agent failure restoring "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; ending restore"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 659
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v4, 0x12

    .line 660
    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 661
    invoke-virtual {v1}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownPipes()V

    .line 662
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    const/4 v13, 0x0

    invoke-virtual {v1, v0, v13}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V
    :try_end_51c
    .catch Ljava/io/IOException; {:try_start_4b8 .. :try_end_51c} :catch_47b

    const/4 v10, 0x0

    .line 663
    :try_start_51d
    iput-object v10, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    .line 664
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v4, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v11, :cond_539

    const/4 v0, -0x2

    .line 669
    invoke-virtual {v1, v0}, Lcom/android/server/backup/restore/RestoreEngine;->setResult(I)V

    const/4 v13, 0x0

    .line 670
    invoke-virtual {v1, v13}, Lcom/android/server/backup/restore/RestoreEngine;->setRunning(Z)V

    return v13

    :catch_531
    move-exception v0

    goto :goto_560

    :cond_533
    const/4 v10, 0x0

    goto :goto_539

    :cond_535
    move-object/from16 v10, v16

    const-wide/16 v46, 0x0

    :cond_539
    :goto_539
    if-nez v6, :cond_55e

    .line 683
    iget-wide v4, v7, Lcom/android/server/backup/FileMetadata;->size:J

    const-wide/16 v8, 0x1ff

    add-long/2addr v4, v8

    const-wide/16 v8, -0x200

    and-long/2addr v4, v8

    :goto_543
    cmp-long v0, v4, v46

    if-lez v0, :cond_55e

    .line 686
    array-length v0, v3

    int-to-long v8, v0

    cmp-long v0, v4, v8

    if-lez v0, :cond_550

    .line 687
    array-length v0, v3

    :goto_54e
    const/4 v13, 0x0

    goto :goto_552

    :cond_550
    long-to-int v0, v4

    goto :goto_54e

    .line 689
    :goto_552
    invoke-virtual {v2, v3, v13, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0
    :try_end_556
    .catch Ljava/io/IOException; {:try_start_51d .. :try_end_556} :catch_531

    int-to-long v8, v0

    cmp-long v0, v8, v46

    if-gtz v0, :cond_55c

    goto :goto_55e

    :cond_55c
    sub-long/2addr v4, v8

    goto :goto_543

    :cond_55e
    :goto_55e
    move-object v5, v7

    goto :goto_582

    .line 699
    :goto_560
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "io exception on restore socket read: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x51

    .line 700
    invoke-virtual {v1, v0, v11}, Lcom/android/server/backup/restore/FullRestoreEngine;->logBMMEvent(ILandroid/content/pm/PackageInfo;)V

    const/4 v2, -0x3

    .line 703
    invoke-virtual {v1, v2}, Lcom/android/server/backup/restore/RestoreEngine;->setResult(I)V

    move-object v5, v10

    :goto_582
    if-nez v5, :cond_595

    .line 712
    invoke-virtual {v1}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownPipes()V

    const/4 v13, 0x0

    .line 713
    invoke-virtual {v1, v13}, Lcom/android/server/backup/restore/RestoreEngine;->setRunning(Z)V

    if-eqz p2, :cond_596

    .line 715
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mIsAdbRestore:Z

    invoke-virtual {v1, v0, v2}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V

    goto :goto_596

    :cond_595
    const/4 v13, 0x0

    :cond_596
    :goto_596
    if-eqz v5, :cond_59a

    move/from16 v13, v28

    :cond_59a
    return v13
.end method

.method public final setUpPipes()V
    .registers 3

    .line 778
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 779
    :try_start_3
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x0

    .line 780
    iput-boolean v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipesClosed:Z

    .line 781
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public final shouldForceClearAppDataOnFullRestore(Ljava/lang/String;)Z
    .registers 4

    .line 900
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 902
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "packages_to_clear_data_before_full_restore"

    iget p0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mUserId:I

    .line 901
    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 905
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 p0, 0x0

    return p0

    .line 909
    :cond_1b
    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 910
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public shouldSkipReadOnlyDir(Lcom/android/server/backup/FileMetadata;)Z
    .registers 4

    .line 722
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mReadOnlyParent:Lcom/android/server/backup/FileMetadata;

    invoke-static {v0, p1}, Lcom/android/server/backup/restore/FullRestoreEngine;->isValidParent(Lcom/android/server/backup/FileMetadata;Lcom/android/server/backup/FileMetadata;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    .line 729
    :cond_a
    invoke-static {p1}, Lcom/android/server/backup/restore/FullRestoreEngine;->isReadOnlyDir(Lcom/android/server/backup/FileMetadata;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 732
    iput-object p1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mReadOnlyParent:Lcom/android/server/backup/FileMetadata;

    .line 733
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Skipping restore of "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and its contents as read-only dirs are currently not supported."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BackupManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_30
    const/4 p1, 0x0

    .line 741
    iput-object p1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mReadOnlyParent:Lcom/android/server/backup/FileMetadata;

    const/4 p0, 0x0

    return p0
.end method

.method public final tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V
    .registers 9

    .line 803
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    if-eqz v0, :cond_66

    if-eqz p2, :cond_51

    .line 807
    :try_start_6
    iget-object p2, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {p2}, Lcom/android/server/backup/UserBackupManagerService;->generateRandomIntegerToken()I

    move-result v1

    .line 808
    iget-object p2, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 809
    invoke-virtual {p2}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getFullBackupAgentTimeoutMillis()J

    move-result-wide v2

    .line 810
    new-instance v4, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;

    iget-object p2, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    invoke-direct {v4, p2, v0, v1}, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/OperationStorage;I)V

    .line 813
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/backup/UserBackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V

    .line 815
    iget-object p2, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string/jumbo v0, "system"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_43

    .line 819
    new-instance p2, Lcom/android/server/backup/restore/AdbRestoreFinishedRunnable;

    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    iget-object v2, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-direct {p2, v0, v1, v2}, Lcom/android/server/backup/restore/AdbRestoreFinishedRunnable;-><init>(Landroid/app/IBackupAgent;ILcom/android/server/backup/UserBackupManagerService;)V

    .line 822
    new-instance v0, Ljava/lang/Thread;

    const-string/jumbo v1, "restore-sys-finished-runner"

    invoke-direct {v0, p2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_4e

    .line 824
    :cond_43
    iget-object p2, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 825
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v0

    .line 824
    invoke-interface {p2, v1, v0}, Landroid/app/IBackupAgent;->doRestoreFinished(ILandroid/app/backup/IBackupManager;)V

    .line 828
    :goto_4e
    invoke-virtual {v4}, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;->await()V

    .line 831
    :cond_51
    iget-object p2, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 832
    invoke-virtual {p2}, Lcom/android/server/backup/UserBackupManagerService;->getBackupAgentConnectionManager()Lcom/android/server/backup/BackupAgentConnectionManager;

    move-result-object p2

    const/4 v0, 0x1

    .line 833
    invoke-virtual {p2, p1, v0}, Lcom/android/server/backup/BackupAgentConnectionManager;->unbindAgent(Landroid/content/pm/ApplicationInfo;Z)V
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_5b} :catch_5c

    goto :goto_63

    .line 835
    :catch_5c
    const-string p1, "BackupManagerService"

    const-string p2, "Lost app trying to shut down"

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_63
    const/4 p1, 0x0

    .line 837
    iput-object p1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    :cond_66
    return-void
.end method

.method public final tearDownPipes()V
    .registers 4

    .line 788
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 789
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipesClosed:Z

    if-nez v1, :cond_26

    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_1c

    if-eqz v1, :cond_26

    const/4 v2, 0x0

    .line 791
    :try_start_c
    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 792
    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 794
    iput-boolean v2, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipesClosed:Z
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_1b} :catch_1e
    .catchall {:try_start_c .. :try_end_1b} :catchall_1c

    goto :goto_26

    :catchall_1c
    move-exception p0

    goto :goto_28

    :catch_1e
    move-exception p0

    .line 796
    :try_start_1f
    const-string v1, "BackupManagerService"

    const-string v2, "Couldn\'t close agent pipes"

    invoke-static {v1, v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 799
    :cond_26
    :goto_26
    monitor-exit v0

    return-void

    :goto_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_1f .. :try_end_29} :catchall_1c

    throw p0
.end method
