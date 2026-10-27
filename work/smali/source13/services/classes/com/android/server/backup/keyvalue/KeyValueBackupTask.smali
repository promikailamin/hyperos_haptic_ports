.class public Lcom/android/server/backup/keyvalue/KeyValueBackupTask;
.super Ljava/lang/Object;
.source "KeyValueBackupTask.java"

# interfaces
.implements Lcom/android/server/backup/BackupRestoreTask;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/keyvalue/KeyValueBackupTask$StateTransaction;
    }
.end annotation


# static fields
.field private static final BLANK_STATE_FILE_NAME:Ljava/lang/String; = "blank_state"

.field public static final NEW_STATE_FILE_SUFFIX:Ljava/lang/String; = ".new"

.field static final NO_DATA_END_SENTINEL:Ljava/lang/String; = "@end@"

.field private static final PM_PACKAGE:Ljava/lang/String; = "@pm@"

.field public static final STAGING_FILE_SUFFIX:Ljava/lang/String; = ".data"

.field private static final SUCCESS_STATE_SUBDIR:Ljava/lang/String; = "backing-up"

.field private static final TAG:Ljava/lang/String; = "KVBT"

.field private static final THREAD_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final THREAD_PRIORITY:I = 0xa


# instance fields
.field private mAgent:Landroid/app/IBackupAgent;

.field private final mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

.field private mBackupData:Landroid/os/ParcelFileDescriptor;

.field private mBackupDataFile:Ljava/io/File;

.field private final mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

.field private final mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field private final mBlankStateFile:Ljava/io/File;

.field private final mCancelAcknowledged:Landroid/os/ConditionVariable;

.field private volatile mCancelled:Z

.field private final mCurrentOpToken:I

.field private mCurrentPackage:Landroid/content/pm/PackageInfo;

.field private final mDataDirectory:Ljava/io/File;

.field private mFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

.field private mHasDataToBackup:Z

.field private final mJournal:Lcom/android/server/backup/DataChangedJournal;

.field private mNewState:Landroid/os/ParcelFileDescriptor;

.field private mNewStateFile:Ljava/io/File;

.field private mNonIncremental:Z

.field private final mOperationStorage:Lcom/android/server/backup/OperationStorage;

.field private final mOriginalQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private volatile mPendingCall:Lcom/android/server/backup/remote/RemoteCall;

.field private final mPendingFullBackups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mQueueLock:Ljava/lang/Object;

.field private final mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

.field private mSavedState:Landroid/os/ParcelFileDescriptor;

.field private mSavedStateFile:Ljava/io/File;

.field private final mStateDirectory:Ljava/io/File;

.field private final mTaskFinishedListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

.field private final mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

.field private final mUserId:I

.field private final mUserInitiated:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 182
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->THREAD_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/OperationStorage;Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;Ljava/util/List;Lcom/android/server/backup/DataChangedJournal;Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;Lcom/android/server/backup/internal/OnTaskFinishedListener;Ljava/util/List;ZZLcom/android/server/backup/utils/BackupEligibilityRules;)V
    .registers 16
    .param p1, "backupManagerService"    # Lcom/android/server/backup/UserBackupManagerService;
    .param p2, "operationStorage"    # Lcom/android/server/backup/OperationStorage;
    .param p3, "transportConnection"    # Lcom/android/server/backup/transport/TransportConnection;
    .param p4, "transportDirName"    # Ljava/lang/String;
    .param p6, "journal"    # Lcom/android/server/backup/DataChangedJournal;
    .param p7, "reporter"    # Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;
    .param p8, "taskFinishedListener"    # Lcom/android/server/backup/internal/OnTaskFinishedListener;
    .param p10, "userInitiated"    # Z
    .param p11, "nonIncremental"    # Z
    .param p12, "backupEligibilityRules"    # Lcom/android/server/backup/utils/BackupEligibilityRules;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/backup/UserBackupManagerService;",
            "Lcom/android/server/backup/OperationStorage;",
            "Lcom/android/server/backup/transport/TransportConnection;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/backup/DataChangedJournal;",
            "Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;",
            "Lcom/android/server/backup/internal/OnTaskFinishedListener;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZ",
            "Lcom/android/server/backup/utils/BackupEligibilityRules;",
            ")V"
        }
    .end annotation

    .line 318
    .local p5, "queue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p9, "pendingFullBackups":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    new-instance v0, Landroid/os/ConditionVariable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCancelAcknowledged:Landroid/os/ConditionVariable;

    .line 297
    iput-boolean v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCancelled:Z

    .line 319
    iput-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 320
    iput-object p2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    .line 321
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 322
    iput-object p3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    .line 323
    iput-object p5, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mOriginalQueue:Ljava/util/List;

    .line 325
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mQueue:Ljava/util/List;

    .line 326
    iput-object p6, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    .line 327
    iput-object p7, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    .line 328
    iput-object p8, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTaskFinishedListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 329
    iput-object p9, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mPendingFullBackups:Ljava/util/List;

    .line 330
    iput-boolean p10, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mUserInitiated:Z

    .line 331
    iput-boolean p11, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNonIncremental:Z

    .line 332
    nop

    .line 334
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getAgentTimeoutParameters()Lcom/android/server/backup/BackupAgentTimeoutParameters;

    move-result-object v0

    .line 333
    const-string v1, "Timeout parameters cannot be null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/BackupAgentTimeoutParameters;

    iput-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 336
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getBaseStateDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mStateDirectory:Ljava/io/File;

    .line 337
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getDataDir()Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mDataDirectory:Ljava/io/File;

    .line 338
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->generateRandomIntegerToken()I

    move-result v1

    iput v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentOpToken:I

    .line 339
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mQueueLock:Ljava/lang/Object;

    .line 340
    new-instance v1, Ljava/io/File;

    const-string v2, "blank_state"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBlankStateFile:Ljava/io/File;

    .line 341
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getUserId()I

    move-result v0

    iput v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mUserId:I

    .line 342
    iput-object p12, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 343
    return-void
.end method

.method private SHA1Checksum([B)Ljava/lang/String;
    .registers 8
    .param p1, "input"    # [B

    .line 995
    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 996
    .local v0, "md":Ljava/security/MessageDigest;
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1
    :try_end_a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_a} :catch_29

    move-object v0, v1

    .line 1000
    .local v0, "checksum":[B
    nop

    .line 1002
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1003
    .local v1, "string":Ljava/lang/StringBuilder;
    array-length v2, v0

    const/4 v3, 0x0

    :goto_16
    if-ge v3, v2, :cond_24

    aget-byte v4, v0, v3

    .line 1004
    .local v4, "item":B
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1003
    .end local v4    # "item":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 1006
    :cond_24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 997
    .end local v0    # "checksum":[B
    .end local v1    # "string":Ljava/lang/StringBuilder;
    :catch_29
    move-exception v0

    .line 998
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v1, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onDigestError(Ljava/security/NoSuchAlgorithmException;)V

    .line 999
    const-string v1, "00"

    return-object v1
.end method

.method private agentDoQuotaExceeded(Landroid/app/IBackupAgent;Ljava/lang/String;J)V
    .registers 13
    .param p1, "agent"    # Landroid/app/IBackupAgent;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "size"    # J

    .line 1139
    if-eqz p1, :cond_2a

    .line 1141
    :try_start_2
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    const-string v1, "KVBT.agentDoQuotaExceeded()"

    .line 1142
    invoke-virtual {v0, v1}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    move-result-object v0

    .line 1143
    .local v0, "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/android/server/backup/transport/BackupTransportClient;->getBackupQuota(Ljava/lang/String;Z)J

    move-result-wide v6

    .line 1144
    .local v6, "quota":J
    new-instance v1, Lcom/android/server/backup/keyvalue/KeyValueBackupTask$$ExternalSyntheticLambda0;

    move-object v2, v1

    move-object v3, p1

    move-wide v4, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask$$ExternalSyntheticLambda0;-><init>(Landroid/app/IBackupAgent;JJ)V

    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 1146
    invoke-virtual {v2}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getQuotaExceededTimeoutMillis()J

    move-result-wide v2

    const-string v4, "doQuotaExceeded()"

    .line 1144
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->remoteCall(Lcom/android/server/backup/remote/RemoteCallable;JLjava/lang/String;)Lcom/android/server/backup/remote/RemoteResult;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_22} :catch_24

    .line 1150
    nop

    .end local v0    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    .end local v6    # "quota":J
    goto :goto_2a

    .line 1148
    :catch_24
    move-exception v0

    .line 1149
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v1, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onAgentDoQuotaExceededError(Ljava/lang/Exception;)V

    .line 1152
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2a
    :goto_2a
    return-void
.end method

.method private agentFail(Landroid/app/IBackupAgent;Ljava/lang/String;)V
    .registers 6
    .param p1, "agent"    # Landroid/app/IBackupAgent;
    .param p2, "message"    # Ljava/lang/String;

    .line 985
    :try_start_0
    invoke-interface {p1, p2}, Landroid/app/IBackupAgent;->fail(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 988
    goto :goto_e

    .line 986
    :catch_4
    move-exception v0

    .line 987
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onFailAgentError(Ljava/lang/String;)V

    .line 989
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_e
    return-void
.end method

.method private applyStateTransaction(I)V
    .registers 5
    .param p1, "stateTransaction"    # I

    .line 1306
    packed-switch p1, :pswitch_data_38

    .line 1320
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown state transaction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1316
    :pswitch_1c
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mSavedStateFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1317
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNewStateFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1318
    goto :goto_37

    .line 1311
    :pswitch_27
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNewStateFile:Ljava/io/File;

    if-eqz v0, :cond_37

    .line 1312
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_37

    .line 1308
    :pswitch_2f
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNewStateFile:Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mSavedStateFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1309
    nop

    .line 1322
    :cond_37
    :goto_37
    return-void

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_27
        :pswitch_1c
    .end packed-switch
.end method

.method private backupPackage(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/keyvalue/AgentException;,
            Lcom/android/server/backup/keyvalue/TaskException;
        }
    .end annotation

    .line 695
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onStartPackageBackup(Ljava/lang/String;)V

    .line 696
    invoke-direct {p0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->getPackageForBackup(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 699
    :try_start_b
    invoke-direct {p0, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->extractAgentData(Landroid/content/pm/PackageInfo;)V

    .line 700
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-direct {p0, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->sendDataToTransport(Landroid/content/pm/PackageInfo;)I

    move-result v0

    .line 701
    .local v0, "status":I
    invoke-direct {p0, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->cleanUpAgentForTransportStatus(I)V
    :try_end_17
    .catch Lcom/android/server/backup/keyvalue/AgentException; {:try_start_b .. :try_end_17} :catch_19
    .catch Lcom/android/server/backup/keyvalue/TaskException; {:try_start_b .. :try_end_17} :catch_19

    .line 705
    .end local v0    # "status":I
    nop

    .line 706
    return-void

    .line 702
    :catch_19
    move-exception v0

    .line 703
    .local v0, "e":Lcom/android/server/backup/keyvalue/BackupException;
    invoke-direct {p0, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->cleanUpAgentForError(Lcom/android/server/backup/keyvalue/BackupException;)V

    .line 704
    throw v0
.end method

.method private backupPm()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/keyvalue/TaskException;
        }
    .end annotation

    .line 661
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    const-string v1, "@pm@"

    invoke-virtual {v0, v1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onStartPackageBackup(Ljava/lang/String;)V

    .line 662
    new-instance v0, Landroid/content/pm/PackageInfo;

    invoke-direct {v0}, Landroid/content/pm/PackageInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 663
    iput-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 670
    :try_start_10
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-direct {p0, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->extractPmAgentData(Landroid/content/pm/PackageInfo;)V
    :try_end_15
    .catch Lcom/android/server/backup/keyvalue/TaskException; {:try_start_10 .. :try_end_15} :catch_23
    .catch Lcom/android/server/backup/keyvalue/AgentException; {:try_start_10 .. :try_end_15} :catch_21

    .line 673
    nop

    .line 681
    :try_start_16
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-direct {p0, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->sendDataToTransport(Landroid/content/pm/PackageInfo;)I

    move-result v0

    .line 682
    .local v0, "status":I
    invoke-direct {p0, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->cleanUpAgentForTransportStatus(I)V

    .line 691
    .end local v0    # "status":I
    nop

    .line 692
    return-void

    .line 683
    :catch_21
    move-exception v0

    goto :goto_29

    .line 671
    :catch_23
    move-exception v0

    .line 672
    .local v0, "e":Lcom/android/server/backup/keyvalue/TaskException;
    invoke-static {v0}, Lcom/android/server/backup/keyvalue/TaskException;->stateCompromised(Ljava/lang/Exception;)Lcom/android/server/backup/keyvalue/TaskException;

    move-result-object v1

    .end local p0    # "this":Lcom/android/server/backup/keyvalue/KeyValueBackupTask;
    throw v1
    :try_end_29
    .catch Lcom/android/server/backup/keyvalue/AgentException; {:try_start_16 .. :try_end_29} :catch_21
    .catch Lcom/android/server/backup/keyvalue/TaskException; {:try_start_16 .. :try_end_29} :catch_21

    .line 684
    .local v0, "e":Lcom/android/server/backup/keyvalue/BackupException;
    .restart local p0    # "this":Lcom/android/server/backup/keyvalue/KeyValueBackupTask;
    :goto_29
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v1, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onExtractPmAgentDataError(Ljava/lang/Exception;)V

    .line 685
    invoke-direct {p0, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->cleanUpAgentForError(Lcom/android/server/backup/keyvalue/BackupException;)V

    .line 686
    instance-of v1, v0, Lcom/android/server/backup/keyvalue/TaskException;

    if-eqz v1, :cond_39

    .line 687
    move-object v1, v0

    check-cast v1, Lcom/android/server/backup/keyvalue/TaskException;

    throw v1

    .line 689
    :cond_39
    invoke-static {v0}, Lcom/android/server/backup/keyvalue/TaskException;->stateCompromised(Ljava/lang/Exception;)Lcom/android/server/backup/keyvalue/TaskException;

    move-result-object v1

    throw v1
.end method

.method private bindAgent(Landroid/content/pm/PackageInfo;)Landroid/app/IBackupAgent;
    .registers 7
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/keyvalue/AgentException;
        }
    .end annotation

    .line 735
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 738
    .local v0, "packageName":Ljava/lang/String;
    :try_start_2
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 741
    invoke-virtual {v4}, Lcom/android/server/backup/utils/BackupEligibilityRules;->getOperationType()I

    move-result v4

    .line 739
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/backup/UserBackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;II)Landroid/app/IBackupAgent;

    move-result-object v1

    .line 742
    .local v1, "agent":Landroid/app/IBackupAgent;
    if-eqz v1, :cond_15

    .line 749
    nop

    .line 750
    return-object v1

    .line 743
    :cond_15
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v2, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onAgentError(Ljava/lang/String;)V

    .line 744
    invoke-static {}, Lcom/android/server/backup/keyvalue/AgentException;->transitory()Lcom/android/server/backup/keyvalue/AgentException;

    move-result-object v2

    .end local v0    # "packageName":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/backup/keyvalue/KeyValueBackupTask;
    .end local p1    # "packageInfo":Landroid/content/pm/PackageInfo;
    throw v2
    :try_end_1f
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_1f} :catch_1f

    .line 746
    .end local v1    # "agent":Landroid/app/IBackupAgent;
    .restart local v0    # "packageName":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/backup/keyvalue/KeyValueBackupTask;
    .restart local p1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_1f
    move-exception v1

    .line 747
    .local v1, "e":Ljava/lang/SecurityException;
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onBindAgentError(Ljava/lang/String;Ljava/lang/SecurityException;)V

    .line 748
    invoke-static {v1}, Lcom/android/server/backup/keyvalue/AgentException;->transitory(Ljava/lang/Exception;)Lcom/android/server/backup/keyvalue/AgentException;

    move-result-object v2

    throw v2
.end method

.method private checkAgentResult(Landroid/content/pm/PackageInfo;Lcom/android/server/backup/remote/RemoteResult;)V
    .registers 9
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "result"    # Lcom/android/server/backup/remote/RemoteResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/keyvalue/AgentException;,
            Lcom/android/server/backup/keyvalue/TaskException;
        }
    .end annotation

    .line 960
    sget-object v0, Lcom/android/server/backup/remote/RemoteResult;->FAILED_THREAD_INTERRUPTED:Lcom/android/server/backup/remote/RemoteResult;

    const/4 v1, 0x1

    if-eq p2, v0, :cond_48

    .line 966
    sget-object v0, Lcom/android/server/backup/remote/RemoteResult;->FAILED_CANCELLED:Lcom/android/server/backup/remote/RemoteResult;

    if-eq p2, v0, :cond_3e

    .line 970
    sget-object v0, Lcom/android/server/backup/remote/RemoteResult;->FAILED_TIMED_OUT:Lcom/android/server/backup/remote/RemoteResult;

    if-eq p2, v0, :cond_34

    .line 974
    invoke-virtual {p2}, Lcom/android/server/backup/remote/RemoteResult;->isPresent()Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 975
    invoke-virtual {p2}, Lcom/android/server/backup/remote/RemoteResult;->get()J

    move-result-wide v2

    .line 976
    .local v2, "resultCode":J
    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2a

    .line 980
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_25

    goto :goto_26

    :cond_25
    const/4 v1, 0x0

    :goto_26
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 981
    return-void

    .line 977
    :cond_2a
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onAgentResultError(Landroid/content/pm/PackageInfo;)V

    .line 978
    invoke-static {}, Lcom/android/server/backup/keyvalue/AgentException;->transitory()Lcom/android/server/backup/keyvalue/AgentException;

    move-result-object v0

    throw v0

    .line 971
    .end local v2    # "resultCode":J
    :cond_34
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onAgentTimedOut(Landroid/content/pm/PackageInfo;)V

    .line 972
    invoke-static {}, Lcom/android/server/backup/keyvalue/AgentException;->transitory()Lcom/android/server/backup/keyvalue/AgentException;

    move-result-object v0

    throw v0

    .line 967
    :cond_3e
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onAgentCancelled(Landroid/content/pm/PackageInfo;)V

    .line 968
    invoke-static {}, Lcom/android/server/backup/keyvalue/TaskException;->create()Lcom/android/server/backup/keyvalue/TaskException;

    move-result-object v0

    throw v0

    .line 962
    :cond_48
    iput-boolean v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCancelled:Z

    .line 963
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onAgentCancelled(Landroid/content/pm/PackageInfo;)V

    .line 964
    invoke-static {}, Lcom/android/server/backup/keyvalue/TaskException;->create()Lcom/android/server/backup/keyvalue/TaskException;

    move-result-object v0

    throw v0
.end method

.method private checkBackupData(Landroid/content/pm/ApplicationInfo;Ljava/io/File;)V
    .registers 9
    .param p1, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "backupDataFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/server/backup/keyvalue/AgentException;
        }
    .end annotation

    .line 1160
    if-eqz p1, :cond_69

    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_9

    goto :goto_69

    .line 1164
    :cond_9
    const/high16 v0, 0x10000000

    .line 1165
    invoke-static {p2, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 1166
    .local v0, "backupData":Landroid/os/ParcelFileDescriptor;
    :try_start_f
    new-instance v1, Landroid/app/backup/BackupDataInput;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/backup/BackupDataInput;-><init>(Ljava/io/FileDescriptor;)V

    .line 1167
    .local v1, "backupDataInput":Landroid/app/backup/BackupDataInput;
    :goto_18
    invoke-virtual {v1}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    move-result v2

    if-eqz v2, :cond_57

    .line 1168
    invoke-virtual {v1}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 1169
    .local v2, "key":Ljava/lang/String;
    if-eqz v2, :cond_53

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const v4, 0xff00

    if-ge v3, v4, :cond_2f

    goto :goto_53

    .line 1170
    :cond_2f
    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    iget-object v4, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-virtual {v3, v4, v2}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onAgentIllegalKey(Landroid/content/pm/PackageInfo;Ljava/lang/String;)V

    .line 1172
    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mAgent:Landroid/app/IBackupAgent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal backup key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->agentFail(Landroid/app/IBackupAgent;Ljava/lang/String;)V

    .line 1173
    invoke-static {}, Lcom/android/server/backup/keyvalue/AgentException;->permanent()Lcom/android/server/backup/keyvalue/AgentException;

    move-result-object v3

    .end local v0    # "backupData":Landroid/os/ParcelFileDescriptor;
    .end local p0    # "this":Lcom/android/server/backup/keyvalue/KeyValueBackupTask;
    .end local p1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local p2    # "backupDataFile":Ljava/io/File;
    throw v3

    .line 1175
    .restart local v0    # "backupData":Landroid/os/ParcelFileDescriptor;
    .restart local p0    # "this":Lcom/android/server/backup/keyvalue/KeyValueBackupTask;
    .restart local p1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .restart local p2    # "backupDataFile":Ljava/io/File;
    :cond_53
    :goto_53
    invoke-virtual {v1}, Landroid/app/backup/BackupDataInput;->skipEntityData()V
    :try_end_56
    .catchall {:try_start_f .. :try_end_56} :catchall_5d

    .line 1176
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_18

    .line 1177
    .end local v1    # "backupDataInput":Landroid/app/backup/BackupDataInput;
    :cond_57
    if-eqz v0, :cond_5c

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 1178
    .end local v0    # "backupData":Landroid/os/ParcelFileDescriptor;
    :cond_5c
    return-void

    .line 1164
    .restart local v0    # "backupData":Landroid/os/ParcelFileDescriptor;
    :catchall_5d
    move-exception v1

    if-eqz v0, :cond_68

    :try_start_60
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_64

    goto :goto_68

    :catchall_64
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_68
    :goto_68
    throw v1

    .line 1162
    .end local v0    # "backupData":Landroid/os/ParcelFileDescriptor;
    :cond_69
    :goto_69
    return-void
.end method

.method private cleanUpAgent(I)V
    .registers 5
    .param p1, "stateTransaction"    # I

    .line 1283
    invoke-direct {p0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->applyStateTransaction(I)V

    .line 1284
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupDataFile:Ljava/io/File;

    if-eqz v0, :cond_a

    .line 1285
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1287
    :cond_a
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBlankStateFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1288
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mSavedStateFile:Ljava/io/File;

    .line 1289
    iput-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupDataFile:Ljava/io/File;

    .line 1290
    iput-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNewStateFile:Ljava/io/File;

    .line 1291
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mSavedState:Landroid/os/ParcelFileDescriptor;

    const-string/jumbo v2, "old state"

    invoke-direct {p0, v1, v2}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->tryCloseFileDescriptor(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 1292
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    const-string v2, "backup data"

    invoke-direct {p0, v1, v2}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->tryCloseFileDescriptor(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 1293
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    const-string/jumbo v2, "new state"

    invoke-direct {p0, v1, v2}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->tryCloseFileDescriptor(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 1294
    iput-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mSavedState:Landroid/os/ParcelFileDescriptor;

    .line 1295
    iput-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    .line 1296
    iput-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    .line 1299
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_42

    .line 1300
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->unbindAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 1302
    :cond_42
    iput-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mAgent:Landroid/app/IBackupAgent;

    .line 1303
    return-void
.end method

.method private cleanUpAgentForError(Lcom/android/server/backup/keyvalue/BackupException;)V
    .registers 3
    .param p1, "exception"    # Lcom/android/server/backup/keyvalue/BackupException;

    .line 1261
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->cleanUpAgent(I)V

    .line 1262
    return-void
.end method

.method private cleanUpAgentForTransportStatus(I)V
    .registers 3
    .param p1, "status"    # I

    .line 1269
    sparse-switch p1, :sswitch_data_14

    .line 1278
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1271
    :sswitch_9
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->cleanUpAgent(I)V

    .line 1272
    goto :goto_13

    .line 1274
    :sswitch_e
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->cleanUpAgent(I)V

    .line 1275
    nop

    .line 1280
    :goto_13
    return-void

    :sswitch_data_14
    .sparse-switch
        -0x3ee -> :sswitch_e
        0x0 -> :sswitch_9
    .end sparse-switch
.end method

.method private clearStatus(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 539
    invoke-direct {p0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->getSuccessStateFileFor(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 540
    .local v0, "successStateFile":Ljava/io/File;
    if-nez v0, :cond_7

    .line 542
    return-void

    .line 544
    :cond_7
    invoke-direct {p0, p1, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->clearStatus(Ljava/lang/String;Ljava/io/File;)V

    .line 545
    return-void
.end method

.method private clearStatus(Ljava/lang/String;Ljava/io/File;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "successStateFile"    # Ljava/io/File;

    .line 549
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 550
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_24

    .line 551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to remove status file for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KVBT"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    :cond_24
    return-void
.end method

.method private createFullBackupTask(Ljava/util/List;)Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;"
        }
    .end annotation

    .line 644
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    new-instance v15, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    iget-object v2, v0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v3, v0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    iget-object v4, v0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    .line 649
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    move-object/from16 v14, p1

    invoke-interface {v14, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, [Ljava/lang/String;

    new-instance v9, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v9, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iget-object v1, v0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    .line 653
    invoke-virtual {v1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->getObserver()Landroid/app/backup/IBackupObserver;

    move-result-object v10

    iget-object v1, v0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    .line 654
    invoke-virtual {v1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->getMonitor()Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v11

    iget-object v12, v0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTaskFinishedListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    iget-boolean v13, v0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mUserInitiated:Z

    iget-object v8, v0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/16 v16, 0x0

    move-object v1, v15

    move-object/from16 v17, v8

    move-object/from16 v8, v16

    move-object/from16 v14, v17

    invoke-direct/range {v1 .. v14}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/OperationStorage;Lcom/android/server/backup/transport/TransportConnection;Landroid/app/backup/IFullBackupRestoreObserver;[Ljava/lang/String;ZLcom/android/server/backup/FullBackupJob;Ljava/util/concurrent/CountDownLatch;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;Lcom/android/server/backup/internal/OnTaskFinishedListener;ZLcom/android/server/backup/utils/BackupEligibilityRules;)V

    .line 644
    return-object v15
.end method

.method private deletePmStateFile()V
    .registers 4

    .line 854
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mStateDirectory:Ljava/io/File;

    const-string v2, "@pm@"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 855
    return-void
.end method

.method private extractAgentData(Landroid/content/pm/PackageInfo;)V
    .registers 5
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/keyvalue/AgentException;,
            Lcom/android/server/backup/keyvalue/TaskException;
        }
    .end annotation

    .line 876
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    new-instance v1, Landroid/os/WorkSource;

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v1, v2}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->setWorkSource(Landroid/os/WorkSource;)V

    .line 878
    const/4 v0, 0x0

    :try_start_f
    invoke-direct {p0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->bindAgent(Landroid/content/pm/PackageInfo;)Landroid/app/IBackupAgent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mAgent:Landroid/app/IBackupAgent;

    .line 879
    invoke-direct {p0, p1, v1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->extractAgentData(Landroid/content/pm/PackageInfo;Landroid/app/IBackupAgent;)V
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_1f

    .line 881
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/backup/UserBackupManagerService;->setWorkSource(Landroid/os/WorkSource;)V

    .line 882
    nop

    .line 883
    return-void

    .line 881
    :catchall_1f
    move-exception v1

    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2, v0}, Lcom/android/server/backup/UserBackupManagerService;->setWorkSource(Landroid/os/WorkSource;)V

    .line 882
    throw v1
.end method

.method private extractAgentData(Landroid/content/pm/PackageInfo;Landroid/app/IBackupAgent;)V
    .registers 14
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "agent"    # Landroid/app/IBackupAgent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/keyvalue/AgentException;,
            Lcom/android/server/backup/keyvalue/TaskException;
        }
    .end annotation

    .line 899
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 900
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v1, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onExtractAgentData(Ljava/lang/String;)V

    .line 902
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mStateDirectory:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mSavedStateFile:Ljava/io/File;

    .line 903
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mDataDirectory:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupDataFile:Ljava/io/File;

    .line 904
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mStateDirectory:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".new"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNewStateFile:Ljava/io/File;

    .line 905
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupDataFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onAgentFilesReady(Ljava/io/File;)V

    .line 907
    const/4 v1, 0x0

    .line 910
    .local v1, "callingAgent":Z
    :try_start_50
    iget-boolean v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNonIncremental:Z

    if-eqz v2, :cond_57

    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBlankStateFile:Ljava/io/File;

    goto :goto_59

    :cond_57
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mSavedStateFile:Ljava/io/File;

    .line 912
    .local v2, "savedStateFileForAgent":Ljava/io/File;
    :goto_59
    const/high16 v3, 0x18000000

    .line 913
    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mSavedState:Landroid/os/ParcelFileDescriptor;

    .line 914
    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupDataFile:Ljava/io/File;

    .line 915
    const/high16 v4, 0x3c000000    # 0.0078125f

    invoke-static {v3, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    .line 917
    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNewStateFile:Ljava/io/File;

    .line 918
    invoke-static {v3, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    .line 923
    iget v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mUserId:I

    if-nez v3, :cond_86

    .line 924
    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupDataFile:Ljava/io/File;

    invoke-static {v3}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_86

    .line 925
    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    iget-object v4, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupDataFile:Ljava/io/File;

    invoke-virtual {v3, v4}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onRestoreconFailed(Ljava/io/File;)V

    .line 929
    :cond_86
    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    const-string v4, "KVBT.extractAgentData()"

    invoke-virtual {v3, v4}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    move-result-object v3

    .line 931
    .local v3, "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lcom/android/server/backup/transport/BackupTransportClient;->getBackupQuota(Ljava/lang/String;Z)J

    move-result-wide v8

    .line 932
    .local v8, "quota":J
    invoke-virtual {v3}, Lcom/android/server/backup/transport/BackupTransportClient;->getTransportFlags()I

    move-result v10

    .line 934
    .local v10, "transportFlags":I
    const/4 v1, 0x1

    .line 935
    new-instance v4, Lcom/android/server/backup/keyvalue/KeyValueBackupTask$$ExternalSyntheticLambda1;

    move-object v5, v4

    move-object v6, p0

    move-object v7, p2

    invoke-direct/range {v5 .. v10}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/backup/keyvalue/KeyValueBackupTask;Landroid/app/IBackupAgent;JI)V

    iget-object v5, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 945
    invoke-virtual {v5}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getKvBackupAgentTimeoutMillis()J

    move-result-wide v5

    const-string v7, "doBackup()"

    .line 936
    invoke-direct {p0, v4, v5, v6, v7}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->remoteCall(Lcom/android/server/backup/remote/RemoteCallable;JLjava/lang/String;)Lcom/android/server/backup/remote/RemoteResult;

    move-result-object v4
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_ac} :catch_b2

    move-object v2, v4

    .line 954
    .end local v3    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    .end local v8    # "quota":J
    .end local v10    # "transportFlags":I
    .local v2, "agentResult":Lcom/android/server/backup/remote/RemoteResult;
    nop

    .line 955
    invoke-direct {p0, p1, v2}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->checkAgentResult(Landroid/content/pm/PackageInfo;Lcom/android/server/backup/remote/RemoteResult;)V

    .line 956
    return-void

    .line 947
    .end local v2    # "agentResult":Lcom/android/server/backup/remote/RemoteResult;
    :catch_b2
    move-exception v2

    .line 948
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onCallAgentDoBackupError(Ljava/lang/String;ZLjava/lang/Exception;)V

    .line 949
    if-eqz v1, :cond_bf

    .line 950
    invoke-static {v2}, Lcom/android/server/backup/keyvalue/AgentException;->transitory(Ljava/lang/Exception;)Lcom/android/server/backup/keyvalue/AgentException;

    move-result-object v3

    throw v3

    .line 952
    :cond_bf
    invoke-static {}, Lcom/android/server/backup/keyvalue/TaskException;->create()Lcom/android/server/backup/keyvalue/TaskException;

    move-result-object v3

    throw v3
.end method

.method private extractPmAgentData(Landroid/content/pm/PackageInfo;)V
    .registers 4
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/keyvalue/AgentException;,
            Lcom/android/server/backup/keyvalue/TaskException;
        }
    .end annotation

    .line 859
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v1, "@pm@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 860
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    invoke-virtual {v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->makeMetadataAgentWithEligibilityRules(Lcom/android/server/backup/utils/BackupEligibilityRules;)Landroid/app/backup/BackupAgent;

    move-result-object v0

    .line 861
    .local v0, "pmAgent":Landroid/app/backup/BackupAgent;
    invoke-virtual {v0}, Landroid/app/backup/BackupAgent;->onBind()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IBackupAgent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IBackupAgent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mAgent:Landroid/app/IBackupAgent;

    .line 862
    invoke-direct {p0, p1, v1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->extractAgentData(Landroid/content/pm/PackageInfo;Landroid/app/IBackupAgent;)V

    .line 863
    return-void
.end method

.method private finishTask(I)V
    .registers 10
    .param p1, "status"    # I

    .line 755
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 756
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/backup/UserBackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    .line 757
    .end local v1    # "packageName":Ljava/lang/String;
    goto :goto_6

    .line 761
    :cond_18
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Lcom/android/server/backup/DataChangedJournal;->delete()Z

    move-result v0

    if-nez v0, :cond_29

    .line 762
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    invoke-virtual {v0, v1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onJournalDeleteFailed(Lcom/android/server/backup/DataChangedJournal;)V

    .line 765
    :cond_29
    const-string v0, "KVBT.finishTask()"

    .line 766
    .local v0, "callerLogString":Ljava/lang/String;
    const/4 v1, 0x0

    .line 770
    .local v1, "transportName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getCurrentToken()J

    move-result-wide v2

    .line 771
    .local v2, "currentToken":J
    iget-boolean v4, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mHasDataToBackup:Z

    if-eqz v4, :cond_5e

    if-nez p1, :cond_5e

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_5e

    .line 773
    :try_start_3e
    iget-object v4, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    invoke-virtual {v4, v0}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    move-result-object v4

    .line 775
    .local v4, "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    invoke-virtual {v4}, Lcom/android/server/backup/transport/BackupTransportClient;->name()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 776
    iget-object v5, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v4}, Lcom/android/server/backup/transport/BackupTransportClient;->getCurrentRestoreSet()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/android/server/backup/UserBackupManagerService;->setCurrentToken(J)V

    .line 777
    iget-object v5, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v5}, Lcom/android/server/backup/UserBackupManagerService;->writeRestoreTokens()V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_57} :catch_58

    .line 781
    .end local v4    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    goto :goto_5e

    .line 778
    :catch_58
    move-exception v4

    .line 780
    .local v4, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v5, v4}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onSetCurrentTokenError(Ljava/lang/Exception;)V

    .line 784
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_5e
    :goto_5e
    iget-object v4, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mQueueLock:Ljava/lang/Object;

    monitor-enter v4

    .line 785
    :try_start_61
    iget-object v5, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/server/backup/UserBackupManagerService;->setBackupRunning(Z)V

    .line 786
    const/16 v5, -0x3e9

    if-ne p1, v5, :cond_7c

    .line 787
    iget-object v5, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v5, v1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onTransportNotInitialized(Ljava/lang/String;)V
    :try_end_70
    .catchall {:try_start_61 .. :try_end_70} :catchall_d5

    .line 789
    :try_start_70
    invoke-direct {p0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->triggerTransportInitializationLocked()V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_73} :catch_74
    .catchall {:try_start_70 .. :try_end_73} :catchall_d5

    .line 793
    goto :goto_7c

    .line 790
    :catch_74
    move-exception v5

    .line 791
    .local v5, "e":Ljava/lang/Exception;
    :try_start_75
    iget-object v6, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v6, v5}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onPendingInitializeTransportError(Ljava/lang/Exception;)V

    .line 792
    const/16 p1, -0x3e8

    .line 795
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_7c
    :goto_7c
    monitor-exit v4
    :try_end_7d
    .catchall {:try_start_75 .. :try_end_7d} :catchall_d5

    .line 797
    invoke-direct {p0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->unregisterTask()V

    .line 798
    iget-object v4, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v4}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onTaskFinished()V

    .line 800
    iget-boolean v4, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCancelled:Z

    if-eqz v4, :cond_8e

    .line 803
    iget-object v4, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCancelAcknowledged:Landroid/os/ConditionVariable;

    invoke-virtual {v4}, Landroid/os/ConditionVariable;->open()V

    .line 806
    :cond_8e
    iget-boolean v4, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCancelled:Z

    if-nez v4, :cond_b4

    if-nez p1, :cond_b4

    iget-object v4, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    if-eqz v4, :cond_b4

    iget-object v4, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mPendingFullBackups:Ljava/util/List;

    .line 809
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b4

    .line 810
    iget-object v4, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    iget-object v5, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mPendingFullBackups:Ljava/util/List;

    invoke-virtual {v4, v5}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onStartFullBackup(Ljava/util/List;)V

    .line 815
    new-instance v4, Ljava/lang/Thread;

    iget-object v5, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    const-string v6, "full-transport-requested"

    invoke-direct {v4, v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 816
    return-void

    .line 819
    :cond_b4
    iget-object v4, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    if-eqz v4, :cond_bb

    .line 820
    invoke-virtual {v4}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    .line 822
    :cond_bb
    iget-object v4, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTaskFinishedListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    invoke-interface {v4, v0}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 823
    iget-object v4, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    iget-boolean v5, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCancelled:Z

    invoke-direct {p0, v5, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->getBackupFinishedStatus(ZI)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onBackupFinished(I)V

    .line 824
    iget-object v4, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v4}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 825
    return-void

    .line 795
    :catchall_d5
    move-exception v5

    :try_start_d6
    monitor-exit v4
    :try_end_d7
    .catchall {:try_start_d6 .. :try_end_d7} :catchall_d5

    throw v5
.end method

.method private getBackupFinishedStatus(ZI)I
    .registers 4
    .param p1, "cancelled"    # Z
    .param p2, "transportStatus"    # I

    .line 828
    if-eqz p1, :cond_5

    .line 829
    const/16 v0, -0x7d3

    return v0

    .line 831
    :cond_5
    sparse-switch p2, :sswitch_data_e

    .line 839
    const/16 v0, -0x3e8

    return v0

    .line 835
    :sswitch_b
    const/4 v0, 0x0

    return v0

    nop

    :sswitch_data_e
    .sparse-switch
        -0x3ed -> :sswitch_b
        -0x3ea -> :sswitch_b
        0x0 -> :sswitch_b
    .end sparse-switch
.end method

.method private getPackageForBackup(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/keyvalue/AgentException;
        }
    .end annotation

    .line 711
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v1, 0x8000000

    iget v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mUserId:I

    .line 712
    invoke-virtual {v0, p1, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_a} :catch_44

    .line 717
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    nop

    .line 718
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 719
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    invoke-virtual {v2, v1}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 723
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    invoke-virtual {v2, v0}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v2

    if-nez v2, :cond_30

    .line 727
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    invoke-virtual {v2, v1}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsStopped(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-nez v2, :cond_26

    .line 731
    return-object v0

    .line 728
    :cond_26
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v2, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onPackageStopped(Ljava/lang/String;)V

    .line 729
    invoke-static {}, Lcom/android/server/backup/keyvalue/AgentException;->permanent()Lcom/android/server/backup/keyvalue/AgentException;

    move-result-object v2

    throw v2

    .line 724
    :cond_30
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v2, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onPackageEligibleForFullBackup(Ljava/lang/String;)V

    .line 725
    invoke-static {}, Lcom/android/server/backup/keyvalue/AgentException;->permanent()Lcom/android/server/backup/keyvalue/AgentException;

    move-result-object v2

    throw v2

    .line 720
    :cond_3a
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v2, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onPackageNotEligibleForBackup(Ljava/lang/String;)V

    .line 721
    invoke-static {}, Lcom/android/server/backup/keyvalue/AgentException;->permanent()Lcom/android/server/backup/keyvalue/AgentException;

    move-result-object v2

    throw v2

    .line 714
    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :catch_44
    move-exception v0

    .line 715
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v1, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onAgentUnknown(Ljava/lang/String;)V

    .line 716
    invoke-static {v0}, Lcom/android/server/backup/keyvalue/AgentException;->permanent(Ljava/lang/Exception;)Lcom/android/server/backup/keyvalue/AgentException;

    move-result-object v1

    throw v1
.end method

.method private getPerformBackupFlags(ZZ)I
    .registers 6
    .param p1, "userInitiated"    # Z
    .param p2, "nonIncremental"    # Z

    .line 1181
    move v0, p1

    .line 1183
    .local v0, "userInitiatedFlag":I
    if-eqz p2, :cond_5

    .line 1184
    const/4 v1, 0x4

    goto :goto_6

    .line 1185
    :cond_5
    const/4 v1, 0x2

    :goto_6
    nop

    .line 1186
    .local v1, "incrementalFlag":I
    or-int v2, v0, v1

    return v2
.end method

.method private getSucceedingPackages()[Ljava/lang/String;
    .registers 3

    .line 501
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->getTopLevelSuccessStateDirectory(Z)Ljava/io/File;

    move-result-object v0

    .line 502
    .local v0, "stateDirectory":Ljava/io/File;
    if-nez v0, :cond_9

    .line 504
    const/4 v1, 0x0

    return-object v1

    .line 507
    :cond_9
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getSuccessStateFileFor(Ljava/lang/String;)Ljava/io/File;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 558
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->getTopLevelSuccessStateDirectory(Z)Ljava/io/File;

    move-result-object v0

    .line 559
    .local v0, "stateDirectory":Ljava/io/File;
    if-nez v0, :cond_9

    const/4 v1, 0x0

    goto :goto_e

    :cond_9
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_e
    return-object v1
.end method

.method private getTopLevelSuccessStateDirectory(Z)Ljava/io/File;
    .registers 5
    .param p1, "createIfMissing"    # Z

    .line 564
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mStateDirectory:Ljava/io/File;

    const-string v2, "backing-up"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 565
    .local v0, "directory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_20

    if-eqz p1, :cond_20

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_20

    .line 566
    const-string v1, "KVBT"

    const-string v2, "Unable to create backing-up state directory"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    const/4 v1, 0x0

    return-object v1

    .line 569
    :cond_20
    return-object v0
.end method

.method private handleTransportStatus(ILjava/lang/String;J)V
    .registers 7
    .param p1, "status"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "size"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/keyvalue/TaskException;,
            Lcom/android/server/backup/keyvalue/AgentException;
        }
    .end annotation

    .line 1114
    if-nez p1, :cond_8

    .line 1115
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onPackageBackupComplete(Ljava/lang/String;J)V

    .line 1116
    return-void

    .line 1118
    :cond_8
    const/16 v0, -0x3ee

    if-ne p1, v0, :cond_1a

    .line 1119
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-virtual {v0, v1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onPackageBackupNonIncrementalRequired(Landroid/content/pm/PackageInfo;)V

    .line 1121
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mQueue:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1122
    return-void

    .line 1124
    :cond_1a
    const/16 v0, -0x3ea

    if-eq p1, v0, :cond_3b

    .line 1128
    const/16 v0, -0x3ed

    if-ne p1, v0, :cond_31

    .line 1129
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v0, p2}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onPackageBackupQuotaExceeded(Ljava/lang/String;)V

    .line 1130
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mAgent:Landroid/app/IBackupAgent;

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->agentDoQuotaExceeded(Landroid/app/IBackupAgent;Ljava/lang/String;J)V

    .line 1131
    invoke-static {}, Lcom/android/server/backup/keyvalue/AgentException;->permanent()Lcom/android/server/backup/keyvalue/AgentException;

    move-result-object v0

    throw v0

    .line 1134
    :cond_31
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v0, p2}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onPackageBackupTransportFailure(Ljava/lang/String;)V

    .line 1135
    invoke-static {p1}, Lcom/android/server/backup/keyvalue/TaskException;->forStatus(I)Lcom/android/server/backup/keyvalue/TaskException;

    move-result-object v0

    throw v0

    .line 1125
    :cond_3b
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v0, p2}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onPackageBackupRejected(Ljava/lang/String;)V

    .line 1126
    invoke-static {}, Lcom/android/server/backup/keyvalue/AgentException;->permanent()Lcom/android/server/backup/keyvalue/AgentException;

    move-result-object v0

    throw v0
.end method

.method private informTransportOfUnchangedApps(Ljava/util/Set;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 411
    .local p1, "appsBackedUp":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v0, "KVBT"

    invoke-direct {p0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->getSucceedingPackages()[Ljava/lang/String;

    move-result-object v1

    .line 412
    .local v1, "succeedingPackages":[Ljava/lang/String;
    if-nez v1, :cond_9

    .line 414
    return-void

    .line 417
    :cond_9
    const/16 v2, 0x8

    .line 418
    .local v2, "flags":I
    iget-boolean v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mUserInitiated:Z

    if-eqz v3, :cond_11

    .line 419
    or-int/lit8 v2, v2, 0x1

    .line 422
    :cond_11
    const/4 v3, 0x0

    .line 424
    .local v3, "noDataPackageEncountered":Z
    :try_start_12
    iget-object v4, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    const-string v5, "KVBT.informTransportOfEmptyBackups()"

    .line 425
    invoke-virtual {v4, v5}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    move-result-object v4

    .line 427
    .local v4, "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    array-length v5, v1

    const/4 v6, 0x0

    move v7, v6

    :goto_1d
    if-ge v7, v5, :cond_5c

    aget-object v8, v1, v7

    .line 428
    .local v8, "packageName":Ljava/lang/String;
    invoke-interface {p1, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3e

    .line 429
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Skipping package which was backed up this time: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catch Lcom/android/server/backup/transport/TransportNotAvailableException; {:try_start_12 .. :try_end_3d} :catch_6b
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_3d} :catch_6b

    .line 431
    goto :goto_59

    .line 436
    :cond_3e
    :try_start_3e
    iget-object v9, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, v8, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    .line 437
    .local v9, "packageInfo":Landroid/content/pm/PackageInfo;
    invoke-direct {p0, v9}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->isEligibleForNoDataCall(Landroid/content/pm/PackageInfo;)Z

    move-result v10

    if-nez v10, :cond_4e

    .line 440
    invoke-direct {p0, v8}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->clearStatus(Ljava/lang/String;)V
    :try_end_4d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3e .. :try_end_4d} :catch_54
    .catch Lcom/android/server/backup/transport/TransportNotAvailableException; {:try_start_3e .. :try_end_4d} :catch_6b
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_4d} :catch_6b

    .line 441
    goto :goto_59

    .line 447
    :cond_4e
    nop

    .line 449
    :try_start_4f
    invoke-direct {p0, v4, v9, v2}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->sendNoDataChangedTo(Lcom/android/server/backup/transport/BackupTransportClient;Landroid/content/pm/PackageInfo;I)V

    .line 450
    const/4 v3, 0x1

    goto :goto_59

    .line 443
    .end local v9    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_54
    move-exception v9

    .line 445
    .local v9, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-direct {p0, v8}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->clearStatus(Ljava/lang/String;)V

    .line 446
    nop

    .line 427
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_59
    add-int/lit8 v7, v7, 0x1

    goto :goto_1d

    .line 453
    :cond_5c
    if-eqz v3, :cond_6a

    .line 457
    new-instance v5, Landroid/content/pm/PackageInfo;

    invoke-direct {v5}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 458
    .local v5, "endSentinal":Landroid/content/pm/PackageInfo;
    const-string v6, "@end@"

    iput-object v6, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 459
    invoke-direct {p0, v4, v5, v2}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->sendNoDataChangedTo(Lcom/android/server/backup/transport/BackupTransportClient;Landroid/content/pm/PackageInfo;I)V
    :try_end_6a
    .catch Lcom/android/server/backup/transport/TransportNotAvailableException; {:try_start_4f .. :try_end_6a} :catch_6b
    .catch Landroid/os/RemoteException; {:try_start_4f .. :try_end_6a} :catch_6b

    .line 463
    .end local v4    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    .end local v5    # "endSentinal":Landroid/content/pm/PackageInfo;
    :cond_6a
    goto :goto_71

    .line 461
    :catch_6b
    move-exception v4

    .line 462
    .local v4, "e":Landroid/util/AndroidException;
    const-string v5, "Could not inform transport of all unchanged apps"

    invoke-static {v0, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 464
    .end local v4    # "e":Landroid/util/AndroidException;
    :goto_71
    return-void
.end method

.method private isEligibleForNoDataCall(Landroid/content/pm/PackageInfo;)Z
    .registers 5
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .line 468
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsKeyValueOnly(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 469
    invoke-virtual {v0, v1, v2}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsRunningAndEligibleForBackupWithTransport(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 468
    :goto_17
    return v0
.end method

.method static synthetic lambda$agentDoQuotaExceeded$1(Landroid/app/IBackupAgent;JJLandroid/app/backup/IBackupCallback;)V
    .registers 6
    .param p0, "agent"    # Landroid/app/IBackupAgent;
    .param p1, "size"    # J
    .param p3, "quota"    # J
    .param p5, "callback"    # Landroid/app/backup/IBackupCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1145
    invoke-interface/range {p0 .. p5}, Landroid/app/IBackupAgent;->doQuotaExceeded(JJLandroid/app/backup/IBackupCallback;)V

    return-void
.end method

.method private registerTask()V
    .registers 5

    .line 346
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    iget v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentOpToken:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-interface {v0, v1, v2, p0, v3}, Lcom/android/server/backup/OperationStorage;->registerOperation(IILcom/android/server/backup/BackupRestoreTask;I)V

    .line 347
    return-void
.end method

.method private remoteCall(Lcom/android/server/backup/remote/RemoteCallable;JLjava/lang/String;)Lcom/android/server/backup/remote/RemoteResult;
    .registers 7
    .param p2, "timeoutMs"    # J
    .param p4, "logIdentifier"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/backup/remote/RemoteCallable<",
            "Landroid/app/backup/IBackupCallback;",
            ">;J",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/server/backup/remote/RemoteResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1337
    .local p1, "remoteCallable":Lcom/android/server/backup/remote/RemoteCallable;, "Lcom/android/server/backup/remote/RemoteCallable<Landroid/app/backup/IBackupCallback;>;"
    new-instance v0, Lcom/android/server/backup/remote/RemoteCall;

    iget-boolean v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCancelled:Z

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/android/server/backup/remote/RemoteCall;-><init>(ZLcom/android/server/backup/remote/RemoteCallable;J)V

    iput-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mPendingCall:Lcom/android/server/backup/remote/RemoteCall;

    .line 1338
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mPendingCall:Lcom/android/server/backup/remote/RemoteCall;

    invoke-virtual {v0}, Lcom/android/server/backup/remote/RemoteCall;->call()Lcom/android/server/backup/remote/RemoteResult;

    move-result-object v0

    .line 1339
    .local v0, "result":Lcom/android/server/backup/remote/RemoteResult;
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v1, v0, p4}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onRemoteCallReturned(Lcom/android/server/backup/remote/RemoteResult;Ljava/lang/String;)V

    .line 1340
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mPendingCall:Lcom/android/server/backup/remote/RemoteCall;

    .line 1341
    return-object v0
.end method

.method private revertTask()V
    .registers 6

    .line 1234
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onRevertTask()V

    .line 1237
    :try_start_5
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    const-string v1, "KVBT.revertTask()"

    .line 1238
    invoke-virtual {v0, v1}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    move-result-object v0

    .line 1239
    .local v0, "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    invoke-virtual {v0}, Lcom/android/server/backup/transport/BackupTransportClient;->requestBackupTime()J

    move-result-wide v1
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_11} :catch_13

    move-wide v0, v1

    .line 1244
    .local v0, "delay":J
    goto :goto_1c

    .line 1240
    .end local v0    # "delay":J
    :catch_13
    move-exception v0

    .line 1241
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v1, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onTransportRequestBackupTimeError(Ljava/lang/Exception;)V

    .line 1243
    const-wide/16 v1, 0x0

    move-wide v0, v1

    .line 1245
    .local v0, "delay":J
    :goto_1c
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getUserId()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 1246
    invoke-virtual {v3}, Lcom/android/server/backup/UserBackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v4}, Lcom/android/server/backup/UserBackupManagerService;->getConstants()Lcom/android/server/backup/BackupManagerConstants;

    move-result-object v4

    .line 1245
    invoke-static {v2, v3, v0, v1, v4}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(ILandroid/content/Context;JLcom/android/server/backup/BackupManagerConstants;)V

    .line 1248
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mOriginalQueue:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_37
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_49

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1249
    .local v3, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v4, v3}, Lcom/android/server/backup/UserBackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    .line 1250
    .end local v3    # "packageName":Ljava/lang/String;
    goto :goto_37

    .line 1251
    :cond_49
    return-void
.end method

.method private sendDataToTransport()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/keyvalue/AgentException;,
            Lcom/android/server/backup/keyvalue/TaskException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1061
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    move v0, v2

    :goto_9
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1062
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupDataFile:Ljava/io/File;

    invoke-direct {p0, v0, v3}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->checkBackupData(Landroid/content/pm/ApplicationInfo;Ljava/io/File;)V

    .line 1064
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1065
    .local v0, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->writeWidgetPayloadIfAppropriate(Ljava/io/FileDescriptor;Ljava/lang/String;)V

    .line 1067
    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mSavedStateFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_2f

    goto :goto_30

    :cond_2f
    move v1, v2

    .line 1068
    .local v1, "nonIncremental":Z
    :goto_30
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupDataFile:Ljava/io/File;

    invoke-direct {p0, v2, v3, v1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->transportPerformBackup(Landroid/content/pm/PackageInfo;Ljava/io/File;Z)I

    move-result v2

    .line 1069
    .local v2, "status":I
    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupDataFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-direct {p0, v2, v0, v3, v4}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->handleTransportStatus(ILjava/lang/String;J)V

    .line 1070
    return v2
.end method

.method private sendDataToTransport(Landroid/content/pm/PackageInfo;)I
    .registers 5
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/keyvalue/AgentException;,
            Lcom/android/server/backup/keyvalue/TaskException;
        }
    .end annotation

    .line 576
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->sendDataToTransport()I

    move-result v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5

    return v0

    .line 577
    :catch_5
    move-exception v0

    .line 578
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onAgentDataError(Ljava/lang/String;Ljava/io/IOException;)V

    .line 579
    invoke-static {v0}, Lcom/android/server/backup/keyvalue/TaskException;->causedBy(Ljava/lang/Exception;)Lcom/android/server/backup/keyvalue/TaskException;

    move-result-object v1

    throw v1
.end method

.method private sendNoDataChangedTo(Lcom/android/server/backup/transport/BackupTransportClient;Landroid/content/pm/PackageInfo;I)V
    .registers 8
    .param p1, "transport"    # Lcom/android/server/backup/transport/BackupTransportClient;
    .param p2, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 478
    const-string v0, "KVBT"

    :try_start_2
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBlankStateFile:Ljava/io/File;

    const/high16 v2, 0x18000000

    invoke-static {v1, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_a} :catch_2f

    .line 482
    .local v1, "pfd":Landroid/os/ParcelFileDescriptor;
    nop

    .line 484
    :try_start_b
    invoke-virtual {p1, p2, v1, p3}, Lcom/android/server/backup/transport/BackupTransportClient;->performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;I)I

    move-result v2

    .line 485
    .local v2, "result":I
    const/16 v3, -0x3e8

    if-eq v2, v3, :cond_21

    const/16 v3, -0x3e9

    if-ne v2, v3, :cond_18

    goto :goto_21

    .line 493
    :cond_18
    invoke-virtual {p1}, Lcom/android/server/backup/transport/BackupTransportClient;->finishBackup()I
    :try_end_1b
    .catchall {:try_start_b .. :try_end_1b} :catchall_2a

    .line 495
    nop

    .end local v2    # "result":I
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 496
    nop

    .line 497
    return-void

    .line 487
    .restart local v2    # "result":I
    :cond_21
    :goto_21
    :try_start_21
    const-string v3, "Aborting informing transport of unchanged apps, transport errored"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_2a

    .line 495
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 490
    return-void

    .line 495
    .end local v2    # "result":I
    :catchall_2a
    move-exception v0

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 496
    throw v0

    .line 479
    .end local v1    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_2f
    move-exception v1

    .line 480
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v2, "Unable to find blank state file, aborting unchanged apps signal."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    return-void
.end method

.method private setSuccessState(Ljava/lang/String;Z)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "success"    # Z

    .line 512
    const-string v0, "Unable to permanently record success for "

    const-string v1, "KVBT"

    invoke-direct {p0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->getSuccessStateFileFor(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 513
    .local v2, "successStateFile":Ljava/io/File;
    if-nez v2, :cond_b

    .line 515
    return-void

    .line 518
    :cond_b
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eq v3, p2, :cond_47

    .line 520
    if-nez p2, :cond_17

    .line 522
    invoke-direct {p0, p1, v2}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->clearStatus(Ljava/lang/String;Ljava/io/File;)V

    .line 523
    return-void

    .line 528
    :cond_17
    :try_start_17
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v3

    if-nez v3, :cond_31

    .line 529
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_31} :catch_32

    .line 533
    :cond_31
    goto :goto_47

    .line 531
    :catch_32
    move-exception v3

    .line 532
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 535
    .end local v3    # "e":Ljava/io/IOException;
    :cond_47
    :goto_47
    return-void
.end method

.method public static start(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/OperationStorage;Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;Ljava/util/List;Lcom/android/server/backup/DataChangedJournal;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;Lcom/android/server/backup/internal/OnTaskFinishedListener;Ljava/util/List;ZZLcom/android/server/backup/utils/BackupEligibilityRules;)Lcom/android/server/backup/keyvalue/KeyValueBackupTask;
    .registers 30
    .param p0, "backupManagerService"    # Lcom/android/server/backup/UserBackupManagerService;
    .param p1, "operationStorage"    # Lcom/android/server/backup/OperationStorage;
    .param p2, "transportConnection"    # Lcom/android/server/backup/transport/TransportConnection;
    .param p3, "transportDirName"    # Ljava/lang/String;
    .param p5, "dataChangedJournal"    # Lcom/android/server/backup/DataChangedJournal;
    .param p6, "observer"    # Landroid/app/backup/IBackupObserver;
    .param p7, "monitor"    # Landroid/app/backup/IBackupManagerMonitor;
    .param p8, "listener"    # Lcom/android/server/backup/internal/OnTaskFinishedListener;
    .param p10, "userInitiated"    # Z
    .param p11, "nonIncremental"    # Z
    .param p12, "backupEligibilityRules"    # Lcom/android/server/backup/utils/BackupEligibilityRules;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/backup/UserBackupManagerService;",
            "Lcom/android/server/backup/OperationStorage;",
            "Lcom/android/server/backup/transport/TransportConnection;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/backup/DataChangedJournal;",
            "Landroid/app/backup/IBackupObserver;",
            "Landroid/app/backup/IBackupManagerMonitor;",
            "Lcom/android/server/backup/internal/OnTaskFinishedListener;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZ",
            "Lcom/android/server/backup/utils/BackupEligibilityRules;",
            ")",
            "Lcom/android/server/backup/keyvalue/KeyValueBackupTask;"
        }
    .end annotation

    .line 226
    .local p4, "queue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p9, "pendingFullBackups":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v7, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    move-object/from16 v13, p0

    move-object/from16 v14, p6

    move-object/from16 v15, p7

    invoke-direct {v7, v13, v14, v15}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;-><init>(Lcom/android/server/backup/UserBackupManagerService;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;)V

    .line 228
    .local v7, "reporter":Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;
    new-instance v16, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move-object/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/OperationStorage;Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;Ljava/util/List;Lcom/android/server/backup/DataChangedJournal;Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;Lcom/android/server/backup/internal/OnTaskFinishedListener;Ljava/util/List;ZZLcom/android/server/backup/utils/BackupEligibilityRules;)V

    .line 242
    .local v0, "task":Lcom/android/server/backup/keyvalue/KeyValueBackupTask;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "key-value-backup-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->THREAD_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 243
    .local v1, "thread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 244
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onNewThread(Ljava/lang/String;)V

    .line 245
    return-object v0
.end method

.method private startTask()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/keyvalue/TaskException;
        }
    .end annotation

    .line 590
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->isBackupOperationInProgress()Z

    move-result v0

    if-nez v0, :cond_aa

    .line 597
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mPendingFullBackups:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->createFullBackupTask(Ljava/util/List;)Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    .line 598
    invoke-direct {p0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->registerTask()V

    .line 600
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mPendingFullBackups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 601
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onEmptyQueueAtStart()V

    .line 602
    return-void

    .line 605
    :cond_29
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mQueue:Ljava/util/List;

    const-string v1, "@pm@"

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_3c

    iget-boolean v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNonIncremental:Z

    if-nez v0, :cond_3a

    goto :goto_3c

    :cond_3a
    move v0, v2

    goto :goto_3d

    :cond_3c
    :goto_3c
    move v0, v3

    .line 606
    .local v0, "backupPm":Z
    :goto_3d
    if-eqz v0, :cond_45

    .line 607
    iget-object v4, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mQueue:Ljava/util/List;

    invoke-interface {v4, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_4a

    .line 609
    :cond_45
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v2}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onSkipPm()V

    .line 612
    :goto_4a
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    iget-object v4, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mQueue:Ljava/util/List;

    invoke-virtual {v2, v4}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onQueueReady(Ljava/util/List;)V

    .line 613
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mStateDirectory:Ljava/io/File;

    invoke-direct {v2, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v2

    .line 615
    .local v1, "pmState":Ljava/io/File;
    :try_start_59
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    const-string v4, "KVBT.startTask()"

    invoke-virtual {v2, v4}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    move-result-object v2

    .line 617
    .local v2, "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    invoke-virtual {v2}, Lcom/android/server/backup/transport/BackupTransportClient;->name()Ljava/lang/String;

    move-result-object v4

    .line 618
    .local v4, "transportName":Ljava/lang/String;
    const-string v5, "EncryptedLocalTransport"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6f

    .line 620
    iput-boolean v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNonIncremental:Z

    .line 623
    :cond_6f
    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v3, v4}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onTransportReady(Ljava/lang/String;)V

    .line 626
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-gtz v3, :cond_9b

    .line 627
    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v3, v4}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onInitializeTransport(Ljava/lang/String;)V

    .line 628
    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v5, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mStateDirectory:Ljava/io/File;

    invoke-virtual {v3, v5}, Lcom/android/server/backup/UserBackupManagerService;->resetBackupState(Ljava/io/File;)V

    .line 629
    invoke-virtual {v2}, Lcom/android/server/backup/transport/BackupTransportClient;->initializeDevice()I

    move-result v3

    .line 630
    .local v3, "status":I
    iget-object v5, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v5, v3}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onTransportInitialized(I)V

    .line 631
    if-nez v3, :cond_96

    goto :goto_9b

    .line 632
    :cond_96
    invoke-static {}, Lcom/android/server/backup/keyvalue/TaskException;->stateCompromised()Lcom/android/server/backup/keyvalue/TaskException;

    move-result-object v5

    .end local v0    # "backupPm":Z
    .end local v1    # "pmState":Ljava/io/File;
    .end local p0    # "this":Lcom/android/server/backup/keyvalue/KeyValueBackupTask;
    throw v5
    :try_end_9b
    .catch Lcom/android/server/backup/keyvalue/TaskException; {:try_start_59 .. :try_end_9b} :catch_a8
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_9b} :catch_9d

    .line 640
    .end local v2    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    .end local v3    # "status":I
    .end local v4    # "transportName":Ljava/lang/String;
    .restart local v0    # "backupPm":Z
    .restart local v1    # "pmState":Ljava/io/File;
    .restart local p0    # "this":Lcom/android/server/backup/keyvalue/KeyValueBackupTask;
    :cond_9b
    :goto_9b
    nop

    .line 641
    return-void

    .line 637
    :catch_9d
    move-exception v2

    .line 638
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v3, v2}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onInitializeTransportError(Ljava/lang/Exception;)V

    .line 639
    invoke-static {}, Lcom/android/server/backup/keyvalue/TaskException;->stateCompromised()Lcom/android/server/backup/keyvalue/TaskException;

    move-result-object v3

    throw v3

    .line 635
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_a8
    move-exception v2

    .line 636
    .local v2, "e":Lcom/android/server/backup/keyvalue/TaskException;
    throw v2

    .line 591
    .end local v0    # "backupPm":Z
    .end local v1    # "pmState":Ljava/io/File;
    .end local v2    # "e":Lcom/android/server/backup/keyvalue/TaskException;
    :cond_aa
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onSkipBackup()V

    .line 592
    invoke-static {}, Lcom/android/server/backup/keyvalue/TaskException;->create()Lcom/android/server/backup/keyvalue/TaskException;

    move-result-object v0

    throw v0
.end method

.method private transportPerformBackup(Landroid/content/pm/PackageInfo;Ljava/io/File;Z)I
    .registers 13
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "backupDataFile"    # Ljava/io/File;
    .param p3, "nonIncremental"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/keyvalue/TaskException;
        }
    .end annotation

    .line 1076
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1077
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 1078
    .local v1, "size":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gtz v3, :cond_13

    .line 1079
    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v3, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onEmptyData(Landroid/content/pm/PackageInfo;)V

    .line 1080
    const/4 v3, 0x0

    return v3

    .line 1083
    :cond_13
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mHasDataToBackup:Z

    .line 1086
    const/high16 v3, 0x10000000

    .line 1087
    :try_start_18
    invoke-static {p2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1c} :catch_6c

    .line 1088
    .local v3, "backupData":Landroid/os/ParcelFileDescriptor;
    :try_start_1c
    iget-object v4, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    const-string v5, "KVBT.transportPerformBackup()"

    .line 1089
    invoke-virtual {v4, v5}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    move-result-object v4

    .line 1090
    .local v4, "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    iget-object v5, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v5, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onTransportPerformBackup(Ljava/lang/String;)V

    .line 1091
    iget-boolean v5, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mUserInitiated:Z

    invoke-direct {p0, v5, p3}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->getPerformBackupFlags(ZZ)I

    move-result v5

    .line 1093
    .local v5, "flags":I
    invoke-virtual {v4, p1, v3, v5}, Lcom/android/server/backup/transport/BackupTransportClient;->performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;I)I

    move-result v6

    .line 1094
    .local v6, "status":I
    if-nez v6, :cond_3b

    .line 1095
    invoke-virtual {v4}, Lcom/android/server/backup/transport/BackupTransportClient;->finishBackup()I

    move-result v7

    move v6, v7

    goto :goto_48

    .line 1096
    :cond_3b
    const/16 v7, -0x3e9

    if-ne v6, v7, :cond_48

    .line 1097
    iget-object v7, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v4}, Lcom/android/server/backup/transport/BackupTransportClient;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onTransportNotInitialized(Ljava/lang/String;)V
    :try_end_48
    .catchall {:try_start_1c .. :try_end_48} :catchall_60

    .line 1099
    .end local v4    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    .end local v5    # "flags":I
    :cond_48
    :goto_48
    if-eqz v3, :cond_4d

    :try_start_4a
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4d} :catch_6c

    .line 1102
    .end local v3    # "backupData":Landroid/os/ParcelFileDescriptor;
    :cond_4d
    nop

    .line 1104
    if-eqz p3, :cond_5f

    const/16 v3, -0x3ee

    if-eq v6, v3, :cond_55

    goto :goto_5f

    .line 1105
    :cond_55
    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v3, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onPackageBackupNonIncrementalAndNonIncrementalRequired(Ljava/lang/String;)V

    .line 1106
    invoke-static {}, Lcom/android/server/backup/keyvalue/TaskException;->create()Lcom/android/server/backup/keyvalue/TaskException;

    move-result-object v3

    throw v3

    .line 1109
    :cond_5f
    :goto_5f
    return v6

    .line 1086
    .end local v6    # "status":I
    .restart local v3    # "backupData":Landroid/os/ParcelFileDescriptor;
    :catchall_60
    move-exception v4

    if-eqz v3, :cond_6b

    :try_start_63
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_67

    goto :goto_6b

    :catchall_67
    move-exception v5

    :try_start_68
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "size":J
    .end local p0    # "this":Lcom/android/server/backup/keyvalue/KeyValueBackupTask;
    .end local p1    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local p2    # "backupDataFile":Ljava/io/File;
    .end local p3    # "nonIncremental":Z
    :cond_6b
    :goto_6b
    throw v4
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_6c} :catch_6c

    .line 1099
    .end local v3    # "backupData":Landroid/os/ParcelFileDescriptor;
    .restart local v0    # "packageName":Ljava/lang/String;
    .restart local v1    # "size":J
    .restart local p0    # "this":Lcom/android/server/backup/keyvalue/KeyValueBackupTask;
    .restart local p1    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local p2    # "backupDataFile":Ljava/io/File;
    .restart local p3    # "nonIncremental":Z
    :catch_6c
    move-exception v3

    .line 1100
    .local v3, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v4, v0, v3}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onPackageBackupTransportError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1101
    invoke-static {v3}, Lcom/android/server/backup/keyvalue/TaskException;->causedBy(Ljava/lang/Exception;)Lcom/android/server/backup/keyvalue/TaskException;

    move-result-object v4

    throw v4
.end method

.method private triggerTransportInitializationLocked()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 845
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    .line 846
    const-string v1, "KVBT.triggerTransportInitializationLocked"

    invoke-virtual {v0, v1}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    move-result-object v0

    .line 847
    .local v0, "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getPendingInits()Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/server/backup/transport/BackupTransportClient;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 848
    invoke-direct {p0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->deletePmStateFile()V

    .line 849
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->backupNow()V

    .line 850
    return-void
.end method

.method private tryCloseFileDescriptor(Ljava/io/Closeable;Ljava/lang/String;)V
    .registers 5
    .param p1, "closeable"    # Ljava/io/Closeable;
    .param p2, "logName"    # Ljava/lang/String;

    .line 1325
    if-eqz p1, :cond_c

    .line 1327
    :try_start_2
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    .line 1330
    goto :goto_c

    .line 1328
    :catch_6
    move-exception v0

    .line 1329
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v1, p2}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onCloseFileDescriptorError(Ljava/lang/String;)V

    .line 1332
    .end local v0    # "e":Ljava/io/IOException;
    :cond_c
    :goto_c
    return-void
.end method

.method private unregisterTask()V
    .registers 3

    .line 350
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    iget v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentOpToken:I

    invoke-interface {v0, v1}, Lcom/android/server/backup/OperationStorage;->removeOperation(I)V

    .line 351
    return-void
.end method

.method private writeWidgetPayloadIfAppropriate(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    .registers 12
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1011
    iget v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mUserId:I

    invoke-static {p2, v0}, Lcom/android/server/AppWidgetBackupBridge;->getWidgetState(Ljava/lang/String;I)[B

    move-result-object v0

    .line 1012
    .local v0, "widgetState":[B
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mStateDirectory:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_widget"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1013
    .local v1, "widgetFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    .line 1014
    .local v2, "priorStateExists":Z
    if-nez v2, :cond_29

    if-nez v0, :cond_29

    .line 1015
    return-void

    .line 1017
    :cond_29
    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v3, v2, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onWriteWidgetData(Z[B)V

    .line 1023
    const/4 v3, 0x0

    .line 1024
    .local v3, "newChecksum":Ljava/lang/String;
    if-eqz v0, :cond_66

    .line 1025
    invoke-direct {p0, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->SHA1Checksum([B)Ljava/lang/String;

    move-result-object v3

    .line 1026
    if-eqz v2, :cond_66

    .line 1029
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1030
    .local v4, "fin":Ljava/io/FileInputStream;
    :try_start_3c
    new-instance v5, Ljava/io/DataInputStream;

    invoke-direct {v5, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_41
    .catchall {:try_start_3c .. :try_end_41} :catchall_5c

    .line 1032
    .local v5, "in":Ljava/io/DataInputStream;
    :try_start_41
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6
    :try_end_45
    .catchall {:try_start_41 .. :try_end_45} :catchall_52

    .line 1033
    .local v6, "priorChecksum":Ljava/lang/String;
    :try_start_45
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_5c

    .end local v5    # "in":Ljava/io/DataInputStream;
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 1034
    .end local v4    # "fin":Ljava/io/FileInputStream;
    invoke-static {v3, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_66

    .line 1036
    return-void

    .line 1028
    .end local v6    # "priorChecksum":Ljava/lang/String;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "in":Ljava/io/DataInputStream;
    :catchall_52
    move-exception v6

    :try_start_53
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_57

    goto :goto_5b

    :catchall_57
    move-exception v7

    :try_start_58
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "widgetState":[B
    .end local v1    # "widgetFile":Ljava/io/File;
    .end local v2    # "priorStateExists":Z
    .end local v3    # "newChecksum":Ljava/lang/String;
    .end local v4    # "fin":Ljava/io/FileInputStream;
    .end local p0    # "this":Lcom/android/server/backup/keyvalue/KeyValueBackupTask;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pkgName":Ljava/lang/String;
    :goto_5b
    throw v6
    :try_end_5c
    .catchall {:try_start_58 .. :try_end_5c} :catchall_5c

    .end local v5    # "in":Ljava/io/DataInputStream;
    .restart local v0    # "widgetState":[B
    .restart local v1    # "widgetFile":Ljava/io/File;
    .restart local v2    # "priorStateExists":Z
    .restart local v3    # "newChecksum":Ljava/lang/String;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/android/server/backup/keyvalue/KeyValueBackupTask;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "pkgName":Ljava/lang/String;
    :catchall_5c
    move-exception v5

    :try_start_5d
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_61

    goto :goto_65

    :catchall_61
    move-exception v6

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_65
    throw v5

    .line 1041
    .end local v4    # "fin":Ljava/io/FileInputStream;
    :cond_66
    new-instance v4, Landroid/app/backup/BackupDataOutput;

    invoke-direct {v4, p1}, Landroid/app/backup/BackupDataOutput;-><init>(Ljava/io/FileDescriptor;)V

    .line 1042
    .local v4, "out":Landroid/app/backup/BackupDataOutput;
    const-string/jumbo v5, "\uffed\uffedwidget"

    if-eqz v0, :cond_a0

    .line 1044
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1045
    .local v6, "fout":Ljava/io/FileOutputStream;
    :try_start_75
    new-instance v7, Ljava/io/DataOutputStream;

    invoke-direct {v7, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_7a
    .catchall {:try_start_75 .. :try_end_7a} :catchall_96

    .line 1047
    .local v7, "stateOut":Ljava/io/DataOutputStream;
    :try_start_7a
    invoke-virtual {v7, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_7d
    .catchall {:try_start_7a .. :try_end_7d} :catchall_8c

    .line 1048
    :try_start_7d
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->close()V
    :try_end_80
    .catchall {:try_start_7d .. :try_end_80} :catchall_96

    .end local v7    # "stateOut":Ljava/io/DataOutputStream;
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 1050
    .end local v6    # "fout":Ljava/io/FileOutputStream;
    array-length v6, v0

    invoke-virtual {v4, v5, v6}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 1051
    array-length v5, v0

    invoke-virtual {v4, v0, v5}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    goto :goto_a7

    .line 1043
    .restart local v6    # "fout":Ljava/io/FileOutputStream;
    .restart local v7    # "stateOut":Ljava/io/DataOutputStream;
    :catchall_8c
    move-exception v5

    :try_start_8d
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->close()V
    :try_end_90
    .catchall {:try_start_8d .. :try_end_90} :catchall_91

    goto :goto_95

    :catchall_91
    move-exception v8

    :try_start_92
    invoke-virtual {v5, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "widgetState":[B
    .end local v1    # "widgetFile":Ljava/io/File;
    .end local v2    # "priorStateExists":Z
    .end local v3    # "newChecksum":Ljava/lang/String;
    .end local v4    # "out":Landroid/app/backup/BackupDataOutput;
    .end local v6    # "fout":Ljava/io/FileOutputStream;
    .end local p0    # "this":Lcom/android/server/backup/keyvalue/KeyValueBackupTask;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pkgName":Ljava/lang/String;
    :goto_95
    throw v5
    :try_end_96
    .catchall {:try_start_92 .. :try_end_96} :catchall_96

    .end local v7    # "stateOut":Ljava/io/DataOutputStream;
    .restart local v0    # "widgetState":[B
    .restart local v1    # "widgetFile":Ljava/io/File;
    .restart local v2    # "priorStateExists":Z
    .restart local v3    # "newChecksum":Ljava/lang/String;
    .restart local v4    # "out":Landroid/app/backup/BackupDataOutput;
    .restart local v6    # "fout":Ljava/io/FileOutputStream;
    .restart local p0    # "this":Lcom/android/server/backup/keyvalue/KeyValueBackupTask;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "pkgName":Ljava/lang/String;
    :catchall_96
    move-exception v5

    :try_start_97
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_9a
    .catchall {:try_start_97 .. :try_end_9a} :catchall_9b

    goto :goto_9f

    :catchall_9b
    move-exception v7

    invoke-virtual {v5, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_9f
    throw v5

    .line 1054
    .end local v6    # "fout":Ljava/io/FileOutputStream;
    :cond_a0
    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 1055
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1057
    :goto_a7
    return-void
.end method


# virtual methods
.method public execute()V
    .registers 1

    .line 584
    return-void
.end method

.method public handleCancel(Z)V
    .registers 3
    .param p1, "cancelAll"    # Z

    .line 1211
    const-string v0, "Can\'t partially cancel a key-value backup task"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1212
    invoke-virtual {p0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->markCancel()V

    .line 1213
    invoke-virtual {p0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->waitCancel()V

    .line 1214
    return-void
.end method

.method synthetic lambda$extractAgentData$0$com-android-server-backup-keyvalue-KeyValueBackupTask(Landroid/app/IBackupAgent;JILandroid/app/backup/IBackupCallback;)V
    .registers 14
    .param p1, "agent"    # Landroid/app/IBackupAgent;
    .param p2, "quota"    # J
    .param p4, "transportFlags"    # I
    .param p5, "callback"    # Landroid/app/backup/IBackupCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 938
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mSavedState:Landroid/os/ParcelFileDescriptor;

    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    move-object v0, p1

    move-wide v4, p2

    move-object v6, p5

    move v7, p4

    invoke-interface/range {v0 .. v7}, Landroid/app/IBackupAgent;->doBackup(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;JLandroid/app/backup/IBackupCallback;I)V

    return-void
.end method

.method public markCancel()V
    .registers 2

    .line 1219
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onCancel()V

    .line 1220
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCancelled:Z

    .line 1221
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mPendingCall:Lcom/android/server/backup/remote/RemoteCall;

    .line 1222
    .local v0, "pendingCall":Lcom/android/server/backup/remote/RemoteCall;
    if-eqz v0, :cond_f

    .line 1223
    invoke-virtual {v0}, Lcom/android/server/backup/remote/RemoteCall;->cancel()V

    .line 1225
    :cond_f
    return-void
.end method

.method public operationComplete(J)V
    .registers 3
    .param p1, "unusedResult"    # J

    .line 587
    return-void
.end method

.method public run()V
    .registers 7

    .line 355
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 357
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mHasDataToBackup:Z

    .line 359
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 360
    .local v1, "backedUpApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 362
    .local v2, "status":I
    :try_start_e
    invoke-direct {p0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->startTask()V

    .line 363
    :goto_11
    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mQueue:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4c

    iget-boolean v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCancelled:Z

    if-nez v3, :cond_4c

    .line 364
    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mQueue:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_25
    .catch Lcom/android/server/backup/keyvalue/TaskException; {:try_start_e .. :try_end_25} :catch_50

    .line 366
    .local v3, "packageName":Ljava/lang/String;
    :try_start_25
    const-string v4, "@pm@"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 367
    invoke-direct {p0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->backupPm()V

    goto :goto_34

    .line 369
    :cond_31
    invoke-direct {p0, v3}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->backupPackage(Ljava/lang/String;)V

    .line 371
    :goto_34
    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->setSuccessState(Ljava/lang/String;Z)V

    .line 372
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_3b
    .catch Lcom/android/server/backup/keyvalue/AgentException; {:try_start_25 .. :try_end_3b} :catch_3c
    .catch Lcom/android/server/backup/keyvalue/TaskException; {:try_start_25 .. :try_end_3b} :catch_50

    .line 379
    goto :goto_4b

    .line 373
    :catch_3c
    move-exception v4

    .line 374
    .local v4, "e":Lcom/android/server/backup/keyvalue/AgentException;
    :try_start_3d
    invoke-direct {p0, v3, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->setSuccessState(Ljava/lang/String;Z)V

    .line 375
    invoke-virtual {v4}, Lcom/android/server/backup/keyvalue/AgentException;->isTransitory()Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 377
    iget-object v5, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v5, v3}, Lcom/android/server/backup/UserBackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    .line 380
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "e":Lcom/android/server/backup/keyvalue/AgentException;
    :cond_4b
    :goto_4b
    goto :goto_11

    .line 382
    :cond_4c
    invoke-direct {p0, v1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->informTransportOfUnchangedApps(Ljava/util/Set;)V
    :try_end_4f
    .catch Lcom/android/server/backup/keyvalue/TaskException; {:try_start_3d .. :try_end_4f} :catch_50

    .line 389
    goto :goto_65

    .line 383
    :catch_50
    move-exception v0

    .line 384
    .local v0, "e":Lcom/android/server/backup/keyvalue/TaskException;
    invoke-virtual {v0}, Lcom/android/server/backup/keyvalue/TaskException;->isStateCompromised()Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 385
    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v4, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mStateDirectory:Ljava/io/File;

    invoke-virtual {v3, v4}, Lcom/android/server/backup/UserBackupManagerService;->resetBackupState(Ljava/io/File;)V

    .line 387
    :cond_5e
    invoke-direct {p0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->revertTask()V

    .line 388
    invoke-virtual {v0}, Lcom/android/server/backup/keyvalue/TaskException;->getStatus()I

    move-result v2

    .line 390
    .end local v0    # "e":Lcom/android/server/backup/keyvalue/TaskException;
    :goto_65
    invoke-direct {p0, v2}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->finishTask(I)V

    .line 391
    return-void
.end method

.method public waitCancel()V
    .registers 2

    .line 1230
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCancelAcknowledged:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 1231
    return-void
.end method
